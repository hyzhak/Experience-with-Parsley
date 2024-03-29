package org.hyzhak.experiments.parsley01.bindings
{
	
	/**
	 * 
	 * @project	Experiment Parsley 01
	 * 
	 * @data	Aug 30, 2011 / 7:06:24 PM
	 * 
	 * @author	Eugene Krevents aka Hyzhak 
	 * 
	 */
	
	public class MyBindValue
	{
		
		//----------------------------------
		//  constants
		//----------------------------------
		
		//----------------------------------
		//  params 
		//----------------------------------
		private var _value:Number;
		//----------------------------------
		//  constructor 
		//----------------------------------
		
		public function MyBindValue()
		{
		}
		
		//--------------------------------------------------------------------------
		//
		//  Getters&setters
		//
		//--------------------------------------------------------------------------
		
		public function get value():Number
		{
			return _value;
		}
		
		public function set value(value:Number):void
		{
			_value = value;
		}
		
		//----------------------------------
		//  private getsetters 
		//----------------------------------
		
		//--------------------------------------------------------------------------
		//
		//  Events handlers
		//
		//--------------------------------------------------------------------------
		
		//--------------------------------------------------------------------------
		//
		//  Methods
		//
		//--------------------------------------------------------------------------
		public function toString():String
		{
			return "[value=" + value.toString() + "]";
		}
		//----------------------------------
		//  private methods
		//----------------------------------
		
		//--------------------------------------------------------------------------
		//
		//  Logs
		//
		//--------------------------------------------------------------------------
		

	}
}