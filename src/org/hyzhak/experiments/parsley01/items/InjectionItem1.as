package org.hyzhak.experiments.parsley01.items
{
	import org.hyzhak.experiments.parsley01.IInjectionItem;
	
	/**
	 * 
	 * @project	Experiment Parsley 01
	 * 
	 * @data	Aug 24, 2011 / 12:54:39 PM
	 * 
	 * @author	Eugene Krevents aka Hyzhak 
	 * 
	 */
	
	[InjectConstructor]
	public class InjectionItem1 implements IInjectionItem
	{
		
		//----------------------------------
		//  constants
		//----------------------------------
		
		//----------------------------------
		//  params 
		//----------------------------------
		private var _strValue:String;
		
		private var _iTimeout:int;
		//----------------------------------
		//  constructor 
		//----------------------------------
		
		public function InjectionItem1(value:String)
		{
			this.value = value;
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

		public function get timeout():int
		{
			return _iTimeout;
		}

		public function set timeout(value:int):void
		{
			_iTimeout = value;
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