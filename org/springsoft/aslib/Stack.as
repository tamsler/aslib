// $Id: Stack.as,v 1.11 2004/10/08 00:52:59 thomas Exp $

/*

Stack is part of ASLib

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
	Stack class
=====================================================================
*/

import org.springsoft.aslib.SingleLinkedList;
import org.springsoft.aslib.StackObject;
import org.springsoft.aslib.Debug;

class org.springsoft.aslib.Stack
{
	/**
	* The SingleLinkedList stack representation
	*/
	private var list_:SingleLinkedList;

	/**
	* Stack Constructor
	*/
	function Stack() 
	{
		Debug.trace("Stack constructor");
		
		list_ = new SingleLinkedList();
	}

	/**
	* Push item on stack
	*
	* @param item Object to be pushed on stack
	*/
	public function push(item:StackObject):Void
	{
		Debug.trace("Stack.push()");
		
		list_.insert(item);
	}

	/**
	* Pop item from stack
	*
	* @returns object 
	*/
	public function pop(Void):StackObject
	{
		Debug.trace("Stack.pop()");
		
		// Get the ObjectListNode and then the data with get().
		// Also making sure to delete the object from the stack by passing true to getFront
		return StackObject(list_.getFront(true).get());
	}

	/**
	* Peek, return top of stack without removing it
	*
	* @returns object
	*/
	public function peek(Void):StackObject
	{
		Debug.trace("Stack.peek()");
		
		// Get the ObjectListNode and then the data with get()
		// Also making sure to not delete the object from the stack by passing false to getFront
		return StackObject(list_.getFront(false).get());
	}

	/**
	* Print the stack
	*/
	public function print(Void):Void
	{
		Debug.trace("Stack.print()");
		
		list_.print();

	}
}
