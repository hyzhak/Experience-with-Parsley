package org.hyzhak.experiments.parsley01.lifecycle.elements
{
	import org.hyzhak.experiments.parsley01.lifecycle.IMyElement;
	import org.hyzhak.experiments.parsley01.lifecycle.MyAnotherElement;
	
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
		
		//----------------------------------
		//  constructor 
		//----------------------------------
		
		public function MyElement()
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
			_anotherElement = value;
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
		public function init():void
		{
			
		}
		
		public function destroy():void
		{
			
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