// $Id: SingleLinkedList.as,v 1.11 2004/10/08 00:52:59 thomas Exp $

/*

SingleLinkedList is part of ASLib

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
	Single Linked List class
=====================================================================
*/

import org.springsoft.aslib.SingleLinkedListObject;
import org.springsoft.aslib.ListNode;
import org.springsoft.aslib.ObjectListNode;
import org.springsoft.aslib.Debug;

class org.springsoft.aslib.SingleLinkedList
{
	/**
	* Head of list
	*/
	private var head_:ListNode;

	/**
	* SingleLinkedList Constructor
	*/
	function SingleLinkedList() 
	{
		Debug.trace("SingleLinkedList constructor");
		
		head_ = null;
	}

	/**
 	* Test for empty list
 	*
 	* @returns true if the linked list is empty. Otherwise returns false.
 	*/
	public function isEmpty(Void):Boolean
	{
		Debug.trace("SingleLinkedList.isEmpty()");
		
		return (null == head_) ? true : false;
	}
	
	/** 
	* Insert a node.  By default we insert at front of list
	*
	* @param data The node's data object
	*/
	public function insert(data:SingleLinkedListObject):Void
	{
		Debug.trace("SingleLinkedList.insert()");
		
		insertFront(new ObjectListNode(data));
	}

	/**
	* Insert a node at tail
	*
	* @param data The node's data object
	*/
	public function insertTail(data:SingleLinkedListObject):Void
	{
		Debug.trace("SingleLinkedList.insertTail()");
		
		if(isEmpty()) {
			insert(data);
		}
		else {
			var tailNode:ListNode = null;
			for(var tempNode:ListNode = head_; tempNode != null; tailNode = tempNode, tempNode = tempNode.getNext()) { }
			insertEnd(new ObjectListNode(data), tailNode);
		}
	}
	
	/**
	* Get a node reference
	*
	* @param key The numeric key to find node
	* @returns ListNode if we find the key.  Otherwise returns null.
	*/
	public function get(key:Number):ListNode
	{
		Debug.trace("SingleLinkedList.get()");
		
		var tempNode:ListNode = head_;

		// Loop through the list and if we have a math, stop and return.
		// If there is not a match, returning null since tempNode will point to null
		for(; tempNode != null; tempNode = tempNode.getNext()) {
			if(key == tempNode.getKey()) {
				break;
			}
		}
		
		return tempNode;
	}

	/**
	* Remove a node
	*
	* @param key The numeric key to find and remove node
	*/
	public function remove(key:Number):Void
	{
		Debug.trace("SingleLinkedList.remove()");

		var previousTempNode:ListNode = head_;

		for(var tempNode:ListNode = head_; tempNode != null; previousTempNode = tempNode, tempNode = tempNode.getNext()) {
			if(key == tempNode.getKey()) {
				if(isFront(tempNode)) {
					removeFront();
				}
				else if(isEnd(tempNode)) {
					removeEnd(previousTempNode);
				}
				else {
					removeMiddle(previousTempNode);
				}
			}
		}
	}
	
	/**
	*
	* Remove all nodes
	*/
	public function removeAll():Void
	{
		Debug.trace("SingleLinkedList.removeAll()");

		var previousTempNode:ListNode = head_;

		for(var tempNode:ListNode = head_; tempNode != null; previousTempNode = tempNode, tempNode = tempNode.getNext()) {
			if(null == tempNode.getNext() && null != previousTempNode.getNext()) {
				tempNode = null;
			}

			if(previousTempNode != tempNode) {
				previousTempNode.setNext(null);
				previousTempNode = null;
			}
		}

		if(null != head_) {
			head_.setNext(null);
			head_ = null;
		}
	}
	
	/**
	* Return the front node and delete front node if canDelete is set to true
	*
	* @param canDelete Flag that indicates if we can delete the front node
	* @returns ListNode if list is not empty.  Otherwise returns null.
	*/
	public function getFront(canDelete:Boolean):ListNode
	{
		Debug.trace("SingleLinkedList.getFront()");
		
		var node:ListNode = head_;
		if(canDelete) {
			removeFront();
		}
		
		return node;
	}
	
	/**
	* Print linked list
	*/
	public function print(Void):Void
	{
		Debug.trace("SingleLinkedList.print()");
		
		trace("=======================")
		trace("Single Linked List HEAD");
		for(var tempNode:ListNode = head_; tempNode != null; tempNode = tempNode.getNext()) {
			trace(tempNode.toString());
		}
		trace("Single Linked List TAIL");
		trace("=======================")
	}
	
	/**
	* Test for front node
	*
	* @param node Test for front node
	* @returns true if node is front node.  Otherwise returns false.
 	*/
	private function isFront(node:ListNode):Boolean
	{
		Debug.trace("SingleLinkedList.isFront()");
		
		return (head_ == node) ? true : false; 
	}

	/**
	* Test for end node
	* @param node Test for end node
	* @returns true if node is end node.  Otherwise returns false.
	*/
	private function isEnd(node:ListNode):Boolean
	{
		Debug.trace("SingleLinkedList.isEnd()");
		
		return(null == node.getNext()) ? true : false; 
	}
	
	/**
	* Test if list has only one node
	*
	* @returns true if list has only one node.  Otherwise returns false.
	*/
	private function hasOneNode(Void):Boolean
	{
		Debug.trace("SingleLinkedList.hasOneNode()");
		
		if((null == head_.getNext()) && (isEmpty())) {
			return true;
		}
		else {
			return false;
		}
	}

	/**
	* Insert at front
	*
	* @param node Insert node at front of list
	*/
	private function insertFront(node:ListNode):Void
	{
		Debug.trace("SingleLinkedList.insertFront()");
		
		if(isEmpty()) {
			head_ = node;
			node.setNext(null);
		}
		else {
			node.setNext(head_);
			head_ = node;
		}
	}

	/**
	* Remove node from front of list
	*/
	private function removeFront():Void
	{
		Debug.trace("SingleLinkedList.removeFront()");
		
		if(isEmpty()) {
			// Don't do anything
		}
		else if(hasOneNode()) {
			head_ = null;
		}
		else {
			var tempNode:ListNode = null;
			tempNode = head_;
			head_ = head_.getNext();
			tempNode = null;
		}
	}

	/**
	* Insert at middle
	*
	* @param node Node that needs to be inserted
	* @param targetNode Insert node after targetNode
	*/
	private function insertMiddle(node:ListNode, targetNode:ListNode):Void 
	{
		Debug.trace("SingleLinkedList.insertMiddle()");
		
		node.setNext(targetNode.getNext());
		targetNode.setNext(node);
	}

	/**
	* Remove from middle
	* 
	* @param previous Node before node that needs to be removed
	*/
	private function removeMiddle(previous:ListNode):Void
	{
		Debug.trace("SingleLinkedList.removeMiddle()");
		
		var tempNode:ListNode = previous.getNext();
		previous.setNext(tempNode.getNext());
		tempNode = null;
	}

	/**
	* Insert at end
	*
	* @param node Node that needs to be inserted
	* @param targetNode Insert node after targetNode
	*/
	private function insertEnd(node:ListNode, targetNode:ListNode):Void
	{
		Debug.trace("SingleLinkedList.insertEnd()");
		
		targetNode.setNext(node);
		node.setNext(null);
	}

	/**
	* Remove from end
	*
	* @param previous Node before node that needs to be removed
	*/
	private function removeEnd(previous:ListNode):Void
	{
		Debug.trace("SingleLinkedList.removeEnd()");
		
		var tempNode:ListNode = previous.getNext();
		previous.setNext(null);
		tempNode = null;
	}
}
