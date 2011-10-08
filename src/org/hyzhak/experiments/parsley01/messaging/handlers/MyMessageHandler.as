package org.hyzhak.experiments.parsley01.messaging.handlers
{
	import flash.utils.getQualifiedClassName;
	
	import org.hyzhak.experiments.parsley01.IMyHandler;
	import org.hyzhak.experiments.parsley01.messaging.events.MyCustomMessage;
	import org.hyzhak.experiments.parsley01.messaging.events.MyEvent;
	import org.hyzhak.experiments.parsley01.messaging.events.MySecondCustomMessage;
	
	/**
	 * 
	 * @project	Experiment Parsley 01
	 * 
	 * @data	Aug 24, 2011 / 1:54:07 PM
	 * 
	 * @author	Eugene Krevents aka Hyzhak 
	 * 
	 */
	
	public class MyMessageHandler implements IMyHandler
	{
		
		//----------------------------------
		//  constants
		//----------------------------------
		
		//----------------------------------
		//  params 
		//----------------------------------
		private var _strParam:String;
		//----------------------------------
		//  constructor 
		//----------------------------------
		
		public function MyMessageHandler()
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
//	описано в messagingConfig.xml
//		[MessageHandler]
		public function onMyEvent(event:MyEvent):void
		{
			trace(getQualifiedClassName(this) + ".onMyEvent");
			trace("event = "+event);
		}
		
//	описано в messagingConfig.xml
//		[MessageHandler]
		public function onMyCustomMessage(message:MyCustomMessage):void
		{
			trace(getQualifiedClassName(this) + ".onMyCustomMessage");
			trace("message = " + message);
		}
		public function onMySecondMessage(param1:String, param2:String):void
		{
			trace(getQualifiedClassName(this) + ".onMySecondMessage");
			trace("param1 = " + param1);
			trace("param2 = " + param2);
		}
		
		
		public function onMySecondCustomMessageWithSelector(msg:MySecondCustomMessage):void
		{
			trace(getQualifiedClassName(this) + ".onMySecondCustomMessageWithSelector");
			trace("param1 = " + msg.param1);
			trace("param2 = " + msg.param2);
		}
			
		

		public function get param():String
		{
			return _strParam;
		}

		public function set param(value:String):void
		{
			if(_strParam == value)
			{
				return;
			}
						
			_strParam = value;
			trace(getQualifiedClassName(this) + ".set param");
			trace("value = "+value);
		}

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