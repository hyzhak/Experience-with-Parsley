package org.hyzhak.experiments.parsley01.lifecycle
{
	import flash.utils.getQualifiedClassName;
	
	import org.spicefactory.lib.reflect.types.Void;
	
	/**
	 * 
	 * @project	Experiment Parsley 01
	 * 
	 * @data	Oct 7, 2011 / 11:37:52 AM
	 * 
	 * @author	Eugene Krevents aka Hyzhak 
	 * 
	 */
	
	public class MyUser
	{
		
		//----------------------------------
		//  constants
		//----------------------------------
		
		//----------------------------------
		//  params 
		//----------------------------------
		[Inject]
		public var firstElement:IMyElement;
		
		[Inject]
		public var secondElement:IMyElement;
		
		//----------------------------------
		//  constructor 
		//----------------------------------
		
		public function MyUser()
		{
		}
		
		//--------------------------------------------------------------------------
		//
		//  Getters&setters
		//
		//--------------------------------------------------------------------------
		
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
		[Init]
		public function init():void
		{
			trace(toClassString + " : init");
			trace("first element = "+firstElement);
			trace("first element.value = "+firstElement.value);
			trace("first element.anotherElement = "+firstElement.anotherElement);
			
			trace("second element = "+firstElement);
			trace("second element.value = "+firstElement.value);
		}
		//----------------------------------
		//  private methods
		//----------------------------------
		private function get toClassString():String
		{
			return "[ " + getQualifiedClassName(this) + " ]";
		}
		//--------------------------------------------------------------------------
		//
		//  Logs
		//
		//--------------------------------------------------------------------------
		
	}
}