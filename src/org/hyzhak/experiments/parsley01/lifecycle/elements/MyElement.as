package org.hyzhak.experiments.parsley01.lifecycle.elements
{
	import org.hyzhak.experiments.parsley01.lifecycle.IMyElement;
	import org.hyzhak.experiments.parsley01.lifecycle.MyAnotherElement;
	import org.hyzhak.experiments.parsley01.utils.IMyLogger;
	import org.hyzhak.experiments.parsley01.utils.MyBaseLogger;
	
	/**
	 * 
	 * @project	Experiment Parsley 01
	 * 
	 * @data	Oct 7, 2011 / 11:39:58 AM
	 * 
	 * @author	Eugene Krevents aka Hyzhak 
	 * 
	 */
	
	public class MyElement implements IMyElement
	{
		
		//----------------------------------
		//  constants
		//----------------------------------
		
		//----------------------------------
		//  params 
		//----------------------------------
		private var _strValue:String;
		
		private var _anotherElement:MyAnotherElement;
		
		[Inject]
		public var anotherElement2:MyAnotherElement;
		
		private var _logger:IMyLogger = MyBaseLogger.getLogger();
		//----------------------------------
		//  constructor 
		//----------------------------------
		
		public function MyElement()
		{
			_logger.logCreateClass(this);
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

		/**
		 * Check here is any injections worked in instance created by factory
		 *  
		 * @return 
		 * 
		 */
		[Inject]
		public function get anotherElement():MyAnotherElement
		{
			return _anotherElement;
		}

		public function set anotherElement(value:MyAnotherElement):void
		{
			_logger.log(this, "inject anotherElement");
			
			_anotherElement = value;
		}
		
		//--------------------------------------------------------------------------
		//
		//  Methods
		//
		//--------------------------------------------------------------------------
		[Init]
		public function init():void
		{
			//this code never fired, becouse instance is created by MyFactory
			_logger.log(this, "init();");
		}
		
		[Destroy]
		public function destroy():void
		{
			//this code never fired, becouse instance is created by MyFactory
			_logger.log(this, "destroy();");			
		}
	}
}