/*

SingleLinkedListDriver is part of ASLib

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
	How to use Single Linked List 
=====================================================================
*/

import org.springsoft.aslib.SingleLinkedList;

// Create single linked list
singleLinkedList = new SingleLinkedList();

// Create some user objects
var u1 = new User(1, "FN " + 1, "LN " + 1);
var u2 = new User(2, "FN " + 2, "LN " + 2);
var u3 = new User(3, "FN " + 3, "LN " + 3);
var u4 = new User(4, "FN " + 4, "LN " + 4);

// Insert user objects into list
trace("Inserting a few SingleLinkedListObjects ...");
singleLinkedList.insert(u1);
singleLinkedList.insert(u2);
singleLinkedList.insert(u3);
singleLinkedList.insert(u4);

// Print the list
//trace("\nPrinting List");
singleLinkedList.print();

// Get the size of the list
var listSize = singleLinkedList.size();
trace("SingleLinkedList size = " + listSize);

// Remove a node
trace("\nRemoving SingleLinkedListObject from List");
singleLinkedList.remove(u1.getKey());

// Print the list
trace("\nPrinting List");
singleLinkedList.print();

// Getting a user object identified by a key
// First option: Get the ListNode and then call get() on the ListNode
// to get the data object (SingleLinkedList object)
trace("\nGetting user object with key: " + singleLinkedList.get(u2.getKey()).get());
// Second option: Get the data object (SingleLinkedList object) directly
trace("Getting user object with key: " + singleLinkedList.getData(u2.getKey()));

// Getting a user object identified by an index where index in {0, ..., n-1}
// The index starts at 0 just like an array does
// First option: Get the ListNode and then call get() on the ListNode
// to get the data object (SingleLinkedList object)
trace("Getting user object with index: " + singleLinkedList.getAt(1).get());
// Second option: Get the data object (SingleLinkedList object) directly
trace("Getting user object with index: " + singleLinkedList.getDataAt(1));

// Remove remaining nodes and print result
trace("\nRemoving SingleLinkedListObject from List");
singleLinkedList.removeAt(2);
trace("\nPrinting List");
singleLinkedList.print();
trace("\nRemoving SingleLinkedListObject from List");
singleLinkedList.removeAt(1);
trace("\nPrinting List");
singleLinkedList.print();
trace("\nRemoving SingleLinkedListObject from List");
singleLinkedList.remove(u4.getKey());
trace("\nPrinting List");
singleLinkedList.print();

