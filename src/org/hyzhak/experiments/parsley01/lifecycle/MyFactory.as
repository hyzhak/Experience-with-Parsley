package org.hyzhak.experiments.parsley01.lifecycle
{
	import flash.utils.getQualifiedClassName;
	import org.hyzhak.experiments.parsley01.lifecycle.elements.MyElement;
	
	/**
	 * Example for "7.2 Using Factories" http://www.spicefactory.org/parsley/docs/2.4/manual/lifecycle.php#factories
	 * 
	 * @project	Experiment Parsley 01
	 * 
	 * @data	Oct 7, 2011 / 11:37:19 AM
	 * 
	 * @author	Eugene Krevents aka Hyzhak 
	 * 
	 */
	
	public class MyFactory
	{
		
		//----------------------------------
		//  constants
		//----------------------------------
		
		//----------------------------------
		//  params 
		//----------------------------------
		private var _iCount:int = 0;
		//----------------------------------
		//  constructor 
		//----------------------------------
		
		public function MyFactory()
		{
			trace("Create " + classNameToString);
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
//		Moved to asset/object-lifecycle-config.xml
//		[Factory]
		public function createElement():IMyElement
		{
			trace(classNameToString + " : createElement();");
			
			_iCount++;
			
			var element:MyElement = new MyElement();
			element.value = "(C) created by my factory. times = " + _iCount.toString();
			
			trace("element = "+element);
			trace("element.value = "+element.value);
			return element;
		}
		
//		Moved to asset/object-lifecycle-config.xml
//		[Factory]
		public function createAnotherElement():MyAnotherElement
		{
			trace(classNameToString + " : createAnotherElement();");
			
			return new MyAnotherElement();
		}
			
		//----------------------------------
		//  private methods
		//----------------------------------
		private function get classNameToString():String
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