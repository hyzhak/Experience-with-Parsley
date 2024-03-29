package org.hyzhak.experiments.parsley01.items
{
	import org.hyzhak.experiments.parsley01.IInjectionItem;
	
	/**
	 * 
	 * @project	Experiment Parsley 01
	 * 
	 * @data	Aug 27, 2011 / 10:58:04 PM
	 * 
	 * @author	Eugene Krevents aka Hyzhak 
	 * 
	 */
	
	public class InjectionItem3 implements IInjectionItem
	{
		
		//----------------------------------
		//  constants
		//----------------------------------
		
		//----------------------------------
		//  params 
		//----------------------------------
		private var _strValue:String;
		//----------------------------------
		//  constructor 
		//----------------------------------
		
		public function InjectionItem3()
		{
			
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