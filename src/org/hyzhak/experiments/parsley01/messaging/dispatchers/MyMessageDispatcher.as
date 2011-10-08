package org.hyzhak.experiments.parsley01.messaging.dispatchers
{
	import flash.utils.getQualifiedClassName;
	
	import org.hyzhak.experiments.parsley01.messaging.IMyMessageDispatcher;
	import org.hyzhak.experiments.parsley01.messaging.events.MyCustomMessage;
	import org.hyzhak.experiments.parsley01.messaging.events.MyEvent;
	import org.hyzhak.experiments.parsley01.messaging.events.MySecondCustomMessage;
	
	/**
	 * 
	 * @project	Experiment Parsley 01
	 * 
	 * @data	Aug 24, 2011 / 1:58:57 PM
	 * 
	 * @author	Eugene Krevents aka Hyzhak 
	 * 
	 */
	
	[Event(name="myEvent", type="org.hyzhak.experiments.parsley01.messaging.events.MyEvent")]

	public class MyMessageDispatcher implements IMyMessageDispatcher
	{
		
		//----------------------------------
		//  constants
		//----------------------------------
		
		//----------------------------------
		//  params 
		//----------------------------------
//	описано в messagingConfig.xml
//		[MessageDispatcher]
		public var dispatcher:Function;
		
		public var mySecondCustomMessage:MySecondCustomMessage;
		
		//----------------------------------
		//  constructor 
		//----------------------------------
		
		public function MyMessageDispatcher()
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
		public function dispatchMyEvent():void
		{
			trace("dispatch " + getQualifiedClassName(this));
			dispatcher(new MyEvent(MyEvent.TYPE));
		}
		
		public function testDispatchMsg():void
		{
			trace(getQualifiedClassName(this) +".testDispatchMsg");
			dispatcher(new MyCustomMessage());
		}
		
		public function testDispatchSecondMsg():void
		{
			trace(getQualifiedClassName(this) +".testDispatchSecondMsg");
			var msg:MySecondCustomMessage = new MySecondCustomMessage();
			if(Math.random() > 0.5)
			{
				msg.param1 = "first param";
				msg.param2 = "second param";
			}
			else
			{
				msg.param1 = "param2";
				msg.param2 = "param2";
			}
			
			dispatcher(msg);
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