/*

User is part of ASLib

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
	User class; used for testing and example
=====================================================================
*/

import org.springsoft.aslib.StackObject;

// User class 
class User implements StackObject
{

	private var key_:Number;
	private var firstName_:String;
	private var lastName_:String;

	// Constructor
	function User(key:Number, firstName:String, lastName:String)
	{
		key_ = key;
		firstName_ = firstName;
		lastName_ = lastName;
	}

	// Implement getKey method
	public function getKey(Void):Number
	{
		return key_;
	}
	
	// Implement  toString method
	public function toString(Void):String
	{
		return "Key = " + key_ + " : FirstName = " + firstName_ + " : LastName = " + lastName_;
	}
	
	// Return FirstName
	public function getFirstName(Void):String
	{
		return firstName_;
	}

	// Return LastName
	public function getLastName(Void):String
	{
		return lastName_;
	}
}
