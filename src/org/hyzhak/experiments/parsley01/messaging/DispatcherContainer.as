package org.hyzhak.experiments.parsley01.messaging
{
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	
	/**
	 * 
	 * @project	Experiment Parsley 01
	 * 
	 * @data	Aug 31, 2011 / 11:58:13 PM
	 * 
	 * @author	Eugene Krevents aka Hyzhak 
	 * 
	 */
	
	public class DispatcherContainer
	{
		
		//----------------------------------
		//  constants
		//----------------------------------
		
		//----------------------------------
		//  params 
		//----------------------------------
		private var _dispatcherSelf:IMyMessageDispatcher;
		private var _dispatcherSeparate:IMyMessageDispatcher;
		private var _timer:Timer = new Timer(0);
		//----------------------------------
		//  constructor 
		//----------------------------------
		
		public function DispatcherContainer()
		{
		}
		
		//--------------------------------------------------------------------------
		//
		//  Getters&setters
		//
		//--------------------------------------------------------------------------
		[Inject(id = "self-dispatcher")]
		public function get dispatcherSelf():IMyMessageDispatcher
		{
			return _dispatcherSelf;
		}
		
		public function set dispatcherSelf(value:IMyMessageDispatcher):void
		{
			_dispatcherSelf = value;
		}
		
		[Inject(id = "separate-dispatcher")]
		public function get dispatcherSeparate():IMyMessageDispatcher
		{
			return _dispatcherSeparate;
		}
		
		public function set dispatcherSeparate(value:IMyMessageDispatcher):void
		{
			_dispatcherSeparate = value;
		}
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
//			dispatcherSelf.dispatchMyEvent();
//			dispatcherSeparate.dispatchMyEvent();
//			
//			dispatcherSelf.testDispatchMsg();
//			dispatcherSeparate.testDispatchMsg();
			
			dispatcherSeparate.testDispatchSecondMsg();
		}
			
		//--------------------------------------------------------------------------
		//
		//  Methods
		//
		//--------------------------------------------------------------------------
		[Init]
		public function initInstance():void
		{
			_timer.addEventListener(TimerEvent.TIMER, onTimer);
			_timer.delay = 1000;
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