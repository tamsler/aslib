/*

HashTableDriver is part of ASLib

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
	HashTable example
=====================================================================
*/

import org.springsoft.aslib.HashTable;

// Create HashTable of size 20
var hashTable = new HashTable(20);

// Check if HashTable is empty
trace("Is HashTable empty = " + hashTable.isEmpty());

trace("\nInserting user objects ...");
// Create some user objects
var user1 = new User(1234, "F-Name1", "L-Name1");
var user2 = new User(4567, "F-Name2", "L-Name2");
var user3 = new User(8910, "F-Name3", "L-Name3");
var user4 = new User(8987, "F-Name4", "L-Name4");

// Put the created user objects in the HashTable
hashTable.put(user1.getKey(), user1);
hashTable.put(user2.getKey(), user2);
hashTable.put(user3.getKey(), user3);
hashTable.put(user4.getKey(), user4);

// Check if HashTable is empty
trace("\nIs HashTable empty = " + hashTable.isEmpty());

// Print HashTable size
trace("\nHashTable size = " + hashTable.size());

// Access an HashTable object and print it
trace("\nPrint HashTable object with key(4567)");
trace(hashTable.get(4567).toString());

// Print the HashTable
trace("\nPrinting HashTable");
hashTable.print();

// Remove an object from the HashTable
trace("\nRemove HashTableObject with key(4567)");
hashTable.remove(4567);

// Print HashTable size
trace("\nHashTable size = " + hashTable.size());

// Print HashTable
trace("\nPrinting HashTable");
hashTable.print();

trace("\nRemoving all HashTable items ...");
// Clear HashTable
hashTable.removeAll();

// Print HashTable
trace("\nPrinting HashTable");
hashTable.print();

