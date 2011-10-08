package org.hyzhak.experiments.parsley01.messaging.dispatchers
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.utils.getQualifiedClassName;
	
	import org.hyzhak.experiments.parsley01.messaging.IMyMessageDispatcher;
	import org.hyzhak.experiments.parsley01.messaging.events.MyEvent;
	
	
	/**
	 * 
	 * @project	Experiment Parsley 01
	 * 
	 * @data	Aug 24, 2011 / 1:47:16 PM
	 * 
	 * @author	Eugene Krevents aka Hyzhak 
	 * 
	 */
	
	[Event(name="myEvent", type="org.hyzhak.experiments.parsley01.messaging.events.MyEvent")]
//	описано в messagingConfig.xml
//	[ManagedEvents("myEvent")]
	
	public class MyMessageSelfDispatcher extends EventDispatcher implements IMyMessageDispatcher
	{
		
		//----------------------------------
		//  constants
		//----------------------------------
		
		//----------------------------------
		//  params 
		//----------------------------------
		
		//----------------------------------
		//  constructor 
		//----------------------------------
		
		public function MyMessageSelfDispatcher(target:IEventDispatcher=null)
		{
			super(target);
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
			dispatchEvent(new MyEvent(MyEvent.TYPE));	
		}
		
		public function testDispatchMsg():void
		{
			trace(getQualifiedClassName(this) +".testDispatchMsg (CAN'T WORK)");
//			dispatcher(new MyCustomMessage());
		}
		
		public function testDispatchSecondMsg():void
		{
			// TODO Auto Generated method stub
			
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