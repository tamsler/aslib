/*

BinaryTreeDriver is part of ASLib

Copyright (C) 2004 Thomas P. Amsler

This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA

Thomas Amsler
tamsler@cal.berkeley.edu

*/

/*
=====================================================================
	Requires:
	ActionScript 2.0

	Description:
	BinaryTree example
=====================================================================
*/

import org.springsoft.aslib.BinaryTree;

// Create a binary tree object
var binaryTree = new BinaryTree();

// Inserting some User objects using both 
// the recursive and iterative insertion mehtod
binaryTree.insert(new User(100, "FN " + 100, "LN " + 100));
binaryTree.insertIter(new User(80, "FN " + 80, "LN " + 80));
binaryTree.insert(new User(120, "FN " + 120, "LN " + 120));
binaryTree.insertIter(new User(110, "FN " + 110, "LN " + 110));
binaryTree.insert(new User(70, "FN " + 70, "LN " + 70));
binaryTree.insertIter(new User(75, "FN " + 75, "LN " + 75));
binaryTree.insert(new User(130, "FN " + 130, "LN " + 130));
binaryTree.insertIter(new User(60, "FN " + 60, "LN " + 60));
binaryTree.insert(new User(90, "FN " + 90, "LN " + 90));

// Print the tree in PreOrder
binaryTree.printPreOrder();
trace("\n");

// Print the tree in InOrder
binaryTree.printInOrder();
trace("\n");

// Print the tree in PostOrder
binaryTree.printPostOrder();
trace("\n");

// Search the tree with key and print the object
trace("Searching(70): " + binaryTree.search(70).toString()); 
trace("\n");

// Remove a node
binaryTree.remove(80);

// Print tree in PreOrder
binaryTree.printPreOrder();

