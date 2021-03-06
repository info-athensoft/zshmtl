package com.athensoft.util.tree;

import java.util.ArrayList;
import java.util.List;

import com.athensoft.util.matrix.ArrayHelper;

/**
 * 多叉树生成、遍历工具
 * 
 * @author Walker
 * @version 1.0.0.0
 */
public class ManyNodeTree {
	
//	public static final int ROOT_ID = 1;
//	public static final int ROOT_PARENT_ID = 0;
	public static final String ROOT_ID = "1";
	public static final String ROOT_PARENT_ID = "0";
	
	
	private static int LEVEL = 0;
	
	private List<Object> listTreeNode = new ArrayList<Object>();
	
	
	/** root node */
	private ManyTreeNode root;

	/**
	 * 构造函数
	 */
	public ManyNodeTree() {
		root = new ManyTreeNode(new TreeNode(ROOT_ID,ROOT_PARENT_ID));
	}

	/**
	 * 生成一颗多叉树，根节点为root
	 * 
	 * @param treeNodes
	 *            生成多叉树的节点集合
	 * @return ManyNodeTree
	 */
	public ManyNodeTree createTree(List<TreeNode> treeNodes) {
		if (treeNodes == null || treeNodes.size() < 0) {
			return null;
		}

		ManyNodeTree manyNodeTree = new ManyNodeTree();
		
		int count = 0;

		// add all nodes to the many-node tree
		for (TreeNode treeNode : treeNodes) {
//			if (treeNode.getParentId()==ROOT_ID) {
			if (treeNode.getParentId().equals(ROOT_ID)) {

				// add a node to the root node
				manyNodeTree.getRoot().getChildList().add(new ManyTreeNode(treeNode));
				
				System.out.println("count ="+(++count)+" - treeNode a = "+treeNode.getNodeId()+"-"+treeNode.getParentId());
				
				
			} else {
				addChild(manyNodeTree.getRoot(), treeNode);
				System.out.println("count ="+(++count)+" - treeNode b = "+treeNode.getNodeId()+"-"+treeNode.getParentId());
			}
		}

		return manyNodeTree;
	}

	/**
	 * Add child node(s) to a specified node of the many-node tree
	 * 
	 * @param manyTreeNode node of the many-node tree
	 * @param child child node
	 */
	public void addChild(ManyTreeNode manyTreeNode, TreeNode child) {
		for (ManyTreeNode item : manyTreeNode.getChildList()) {
//			if (item.getData().getNodeId()==child.getParentId()) {
			if (item.getData().getNodeId().equals(child.getParentId())) {
			
				// to find the parent node
				item.getChildList().add(new ManyTreeNode(child));
				break;
			} else {
				if (item.getChildList() != null && item.getChildList().size() > 0) {
					addChild(item, child);
				}
			}
		}
	}

	/**
	 * Traversal many-node tree
	 * 
	 * @param manyTreeNode 多叉树节点
	 * @return
	 */
	public String iteratorTree(ManyTreeNode manyTreeNode) {

		StringBuilder buffer = new StringBuilder();
		//buffer.append("\n");
		
		if (manyTreeNode != null) {
			for (ManyTreeNode index : manyTreeNode.getChildList()) {
				
				buffer.append(getSpace(LEVEL)+index.getData().getNodeId() + "\n");

				if (index.getChildList() != null && index.getChildList().size() > 0) {
					LEVEL++;
					buffer.append(iteratorTree(index));
					LEVEL--;
				}
			}
		}

		//buffer.append("\n");

		return buffer.toString();
	}

	
	public List<Object> iteratorTreeAsArray(ManyTreeNode manyTreeNode) {
	
		if (manyTreeNode != null) {
			for (ManyTreeNode index : manyTreeNode.getChildList()) {
				
				System.out.println(index.getData().toString());
				listTreeNode.add(index.getData().getContent());
				
				//buffer.append(getSpace(LEVEL)+index.getData().getNodeId() + "\n");

				if (index.getChildList() != null && index.getChildList().size() > 0) {
					//LEVEL++;
//					listTreeNode.add(index.getData().getContent());
					iteratorTreeAsArray(index);
					//LEVEL--;
				}
			}
		}

		return listTreeNode;
	}
	
	public ManyTreeNode getRoot() {
		return root;
	}

	public void setRoot(ManyTreeNode root) {
		this.root = root;
	}
	
	
	private String getSpace(int num){
		StringBuffer sbf = new StringBuffer();
		final String PLACE_HOLDER = "--";
		for(int i=0; i<num; i++){
			sbf.append(PLACE_HOLDER);
		}
		return sbf.toString();
	}
	
	
	
	
	
	public static String[][] getPreOrderTreeAsArray(String[][] orignalData){
		List<TreeNode> treeNodes = new ArrayList<TreeNode>();
		
		System.out.println("getPreOrderTreeAsArray orignalData.length="+orignalData.length);
		
		for(int i=0; i<orignalData.length; i++){
			treeNodes.add(new TreeNode(orignalData[i][1], orignalData[i][2],orignalData[i]));
		}
		
		System.out.println("getPreOrderTreeAsArray treeNodes.size="+treeNodes.size());
		
		ManyNodeTree tree = new ManyNodeTree();
		
		tree = tree.createTree(treeNodes);

		//System.out.println(tree.iteratorTree(tree.getRoot()));
		
		
//		List<Object> list = tree.iteratorTreeAsArray(tree.getRoot());
		System.out.println("ROOT node = "+tree.getRoot().getData().getNodeId()+" "+tree.getRoot().getData().getParentId());
		List<Object> list = tree.iteratorTreeAsArray(tree.getRoot());
		System.out.println("getPreOrderTreeAsArray list size()="+list.size());
		
		
//		String[][] resData = ArrayHelper.convertListToArray(list);
		
		String[][] resData = new String[list.size()][orignalData[0].length];
		for(int i=0; i<list.size();i++){
			resData[i]=(String[])list.get(i);
		}
		
		return resData;
	}
	

	public static void main(String[] args) {
		
		String[][] data = new String[11][4];
		data[0] = new String[]{"","系统权限管理", "1","a","b"};
		data[1] = new String[]{"","用户管理", "系统权限管理","a","b"};
		data[2] = new String[]{"","用户管理", "系统权限管理","a","b"};
		data[3] = new String[]{"","用户管理", "系统权限管理","a","b"};
		data[4] = new String[]{"","用户菜单管理", "系统权限管理","a","b"};
		data[5] = new String[]{"","角色菜单管理", "系统权限管理","a","b"};
		data[6] = new String[]{"","用户权限管理", "系统权限管理","a","b"};
		data[7] = new String[]{"","站内信", "1","a","b"};
		data[8] = new String[]{"","写信", "站内信","a","b"};
		data[9] = new String[]{"","收信", "站内信","a","b"};
		data[10] = new String[]{"","草稿", "站内信","a","b"};
		
		ArrayHelper.printArray(getPreOrderTreeAsArray(data));
		
	}
}
