package org.hyzhak.experiments.parsley01.messaging.events
{
	import flash.events.Event;
	
	
	/**
	 * 
	 * @project	Experiment Parsley 01
	 * 
	 * @data	Aug 24, 2011 / 1:47:47 PM
	 * 
	 * @author	Eugene Krevents aka Hyzhak 
	 * 
	 */
	
	public class MyEvent extends Event
	{
		
		//----------------------------------
		//  constants
		//----------------------------------
		public static const TYPE:String = "myEvent";
		//----------------------------------
		//  params 
		//----------------------------------
		private var _strValue:String;
		//----------------------------------
		//  constructor 
		//----------------------------------
		
		public function MyEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			value = "MyEvent : value "+ Math.random().toString();
		}
		
		//--------------------------------------------------------------------------
		//
		//  Getters&setters
		//
		//--------------------------------------------------------------------------
		
		public function get value():String
		{
			return _strValue;
		}
		
		public function set value(value:String):void
		{
			_strValue = value;
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