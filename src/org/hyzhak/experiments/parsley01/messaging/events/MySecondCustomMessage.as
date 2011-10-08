package org.hyzhak.experiments.parsley01.messaging.events
{
	
	/**
	 * 
	 * @project	Experiment Parsley 01
	 * 
	 * @data	Oct 1, 2011 / 9:50:48 PM
	 * 
	 * @author	Eugene Krevents aka Hyzhak 
	 * 
	 */
	
	public class MySecondCustomMessage
	{
		
		//----------------------------------
		//  constants
		//----------------------------------
		
		//----------------------------------
		//  params 
		//----------------------------------
		private var _strParam1:String;
		private var _strParam2:String;
		//----------------------------------
		//  constructor 
		//----------------------------------
		
		public function MySecondCustomMessage()
		{
		}
		
		//--------------------------------------------------------------------------
		//
		//  Getters&setters
		//
		//--------------------------------------------------------------------------
		
		public function get param1():String
		{
			return _strParam1;
		}
		
		public function set param1(value:String):void
		{
			_strParam1 = value;
		}
		
		[Selector]
		public function get param2():String
		{
			return _strParam2;
		}
		
		public function set param2(value:String):void
		{
			_strParam2 = value;			
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