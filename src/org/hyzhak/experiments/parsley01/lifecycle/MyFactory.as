package org.hyzhak.experiments.parsley01.lifecycle
{
	import flash.utils.getQualifiedClassName;
	
	import org.hyzhak.experiments.parsley01.lifecycle.elements.MyElement;
	import org.hyzhak.experiments.parsley01.utils.IMyLogger;
	import org.hyzhak.experiments.parsley01.utils.MyBaseLogger;
	
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
		
		private var _logger:IMyLogger = MyBaseLogger.getLogger();
		//----------------------------------
		//  constructor 
		//----------------------------------
		
		public function MyFactory()
		{
			_logger.logCreateClass(this);
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
			_logger.log(this, "createElement();");
			
			_iCount++;
			
			var element:MyElement = new MyElement();
			element.value = "(C) created by my factory. times = " + _iCount.toString();
			
			_logger.logSimple("element = "+element);
			_logger.logSimple("element.value = "+element.value);
			return element;
		}
		
//		Moved to asset/object-lifecycle-config.xml
//		[Factory]
		public function createAnotherElement():MyAnotherElement
		{
			_logger.log(this, "createAnotherElement();");
			
			return new MyAnotherElement();
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