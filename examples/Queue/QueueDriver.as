/*

QueueDriver is part of ASLib

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
	Queue example
=====================================================================
*/

import org.springsoft.aslib.Queue;

// Create queue instance
var queue = new Queue();

// Create some user objects
trace("Creating some user objects ...");
var u1 = new User("FN " + 1, "LN " + 1);
var u2 = new User("FN " + 2, "LN " + 2);
var u3 = new User("FN " + 3, "LN " + 3);
var u4 = new User("FN " + 4, "LN " + 4);

// Put users objects into queue
trace("\nEnqueue some objects ...");
queue.enqueue(u1);
queue.enqueue(u2);
queue.enqueue(u3);

// Print queue
trace("\nPrinting Queue");
queue.print();

// Remove user object from queue
trace("\nQueue.dequeue() = " + queue.dequeue());

// Remove user object from queue
trace("\nQueue.dequeue() = " + queue.dequeue());

// Print queue
trace("\nPrinting Queue");
queue.print();

// Put user object into queue
trace("\nEnqueue one objects ...");
queue.enqueue(u4);

// Print queue
trace("\nPrinting Queue");
queue.print();

// Remove user object from queue
trace("\nQueue.dequeue() = " + queue.dequeue());

// Print queue
trace("\nPrinting Queue");
queue.print();

// Remove user object from queue
trace("\nQueue.dequeue() = " + queue.dequeue());

// Print queue
trace("\nPrinting Queue");
queue.print();

