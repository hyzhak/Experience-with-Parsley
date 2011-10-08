package org.hyzhak.experiments.parsley01.bindings
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	import flash.utils.getQualifiedClassName;
	
	/**
	 * MyBindPublisher - запускается таймер, который каждую минуту меняет значение о чем сообщает заинтересованным
	 * 
	 * @project	Experiment Parsley 01
	 * 
	 * @data	Aug 30, 2011 / 7:00:25 PM
	 * 
	 * @author	Eugene Krevents aka Hyzhak 
	 * 
	 */
	
	public class MyBindPublisher extends EventDispatcher
	{
		
		//----------------------------------
		//  constants
		//----------------------------------
		
		//----------------------------------
		//  params 
		//----------------------------------
		private var _value:MyBindValue;
		
		private var _nMaxValue : Number;
		private var _maxValueObject : MyBindValue;
		
		private var _timer:Timer;
		
		[MessageDispatcher]
		public var _dispatcher:Function;
		//----------------------------------
		//  constructor 
		//----------------------------------
		
		public function MyBindPublisher()
		{
//			_dispatcher = new EventDispatcher();
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
		private function onTimer(event:TimerEvent):void
		{
			if(Math.random()>0.5)
			{
				var newValue:MyBindValue = new MyBindValue();
				newValue.value = Math.random();
				
				trace("set " + getQualifiedClassName(this) + ".value = " + newValue);
				if(maxValue < newValue.value)
				{
					maxValue = newValue.value;
				}
				
				trace("max value "+ maxValue);
				value = newValue;
			}
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
		
		/**
		 * О изменении значения сообщается в приложении
		 *  
		 * @return 
		 * 
		 */
		[Publish]
		public function get value():MyBindValue
		{
			return _value;
		}

		public function set value(value:MyBindValue):void
		{
			if(_value == value)
			{
				return;
			}
			
			_value = value;
			
			dispatchEvent(new Event(Event.CHANGE));
		}

		/**
		 * Свойство будет сохранено даже после закрытия приложения. 
		 * Для чего Parsley запишет его в SharedObject.
		 * 
		 * На данном этапе со сложными типами не работает
		 * 
		 * @return 
		 * 
		 */
		[PublishSubscribe(persistent="true",objectId="maxValue")]
		public function get maxValue():Number
		{
			return _nMaxValue;
		}

		public function set maxValue(value:Number):void
		{
			if(_nMaxValue == value)
			{
				return;
			}
			
			_nMaxValue = value;
			
			dispatchEvent(new Event(Event.CHANGE));
		}


	}
}