﻿// $Id: Debug.as,v 1.8 2004/10/08 00:52:59 thomas Exp $

/*

Debug is part of ASLib

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
	Provides output debugging method 
=====================================================================
*/

class org.springsoft.aslib.Debug
{
	/**
	* Static member to indicate if debugging features are turned on or off
	*/
	private static var isActive_:Boolean = false;

	/** 
	* Trace method prints a debugging message
	*
	* @param msg String holding the message
	*/
	static function trace(msg:String):Void
	{
		if(isActive_) {
			trace("DEBUG: " + msg);
		}
	}

	/**
	* Turn on debugging features
	*/
	static function turnOn(Void):Void
	{
		isActive_ = true;
	}

	/**
	* Turn off debugging features
	*/
	static function turnOff(Void):Void
	{
		isActive_ = false;
	}
}

