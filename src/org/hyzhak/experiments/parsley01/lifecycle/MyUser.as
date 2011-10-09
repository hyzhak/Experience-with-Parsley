package org.hyzhak.experiments.parsley01.lifecycle
{
	import flash.utils.getQualifiedClassName;
	
	import org.hyzhak.experiments.parsley01.utils.IMyLogger;
	import org.hyzhak.experiments.parsley01.utils.MyBaseLogger;
	import org.spicefactory.lib.reflect.types.Void;
	
	/**
	 * Example for "7.2 Using Factories" 
	 * http://www.spicefactory.org/parsley/docs/2.4/manual/lifecycle.php#factories
	 * 
	 * This class target for injection IMyElement and MyAnotherElement.
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
		
		private var _logger:IMyLogger = MyBaseLogger.getLogger();
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
			_logger.log(this, "init();");
			_logger.logSimple("first element = "+firstElement);
			_logger.logSimple("first element.value = "+firstElement.value);
			_logger.logSimple("first element.anotherElement = "+firstElement.anotherElement);
			
			_logger.logSimple("second element = "+firstElement);
			_logger.logSimple("second element.value = "+firstElement.value);
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