package org.hyzhak.experiments.parsley01.bindings
{
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	import flash.utils.getQualifiedClassName;
	
	/**
	 * 
	 * @project	Experiment Parsley 01
	 * 
	 * @data	Aug 30, 2011 / 7:00:42 PM
	 * 
	 * @author	Eugene Krevents aka Hyzhak 
	 * 
	 */
	
	public class MyBindSubscriber
	{
		
		//----------------------------------
		//  constants
		//----------------------------------
		
		//----------------------------------
		//  params 
		//----------------------------------
		[Subscribe]
		public var value:MyBindValue;
		
		
		private var _timer:Timer;
		//----------------------------------
		//  constructor 
		//----------------------------------
		
		public function MyBindSubscriber()
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
		private function onTimer(event:Event):void
		{
			trace(getQualifiedClassName(this) + ".value = " + value);
		}
		//--------------------------------------------------------------------------
		//
		//  Methods
		//
		//--------------------------------------------------------------------------
		[Init]
		public function init():void
		{
			_timer = new Timer(1000);
			_timer.addEventListener(TimerEvent.TIMER, onTimer);
			_timer.start();
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