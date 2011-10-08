package org.hyzhak.experiments.parsley01.utils
{
	import flash.utils.getDefinitionByName;
	import flash.utils.getQualifiedClassName;
	
	import org.hyzhak.experiments.parsley01.lifecycle.IMyElement;
	import org.spicefactory.lib.reflect.types.Void;
	
	/**
	 * 
	 * @project	Experiment Parsley 01
	 * 
	 * @data	Oct 8, 2011 / 11:57:10 PM
	 * 
	 * @author	Eugene Krevents aka Hyzhak 
	 * 
	 */
	
	public class MyBaseLogger implements IMyLogger
	{
		
		//----------------------------------
		//  constants
		//----------------------------------
		
		//----------------------------------
		//  params 
		//----------------------------------
		private static var _instance:IMyLogger;
		//----------------------------------
		//  constructor 
		//----------------------------------
		
		public function MyBaseLogger()
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
		public static function getLogger():IMyLogger
		{
			if(_instance == null)
			{
				_instance = new MyBaseLogger();
			}
			return _instance;
		}
		
		public function log(sender:Object, message:String):void
		{
			trace("... ["+getQualifiedClassName(sender)+"] : " + message);
		}
		
		public function logSimple(message:String):void
		{
			trace("... " + message);
		}
		
		
		
		public function logCreateClass(sender:Object):void
		{
			trace("... CREATE ["+getQualifiedClassName(sender) + "]");
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