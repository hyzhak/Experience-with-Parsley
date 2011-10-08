package org.hyzhak.experiments.parsley01.messaging.commands
{
	import flash.utils.getQualifiedClassName;
	
	import org.hyzhak.experiments.parsley01.messaging.events.MyCustomMessage;
	import org.hyzhak.experiments.parsley01.messaging.events.MyEvent;
	import org.spicefactory.parsley.rpc.flex.command.AsyncTokenCommandFactory;
	import org.spicefactory.parsley.rpc.flex.command.AsyncTokenCommandSupport;
	
	/**
	 * 
	 * @project	Experiment Parsley 01
	 * 
	 * @data	Oct 2, 2011 / 2:09:06 PM
	 * 
	 * @author	Eugene Krevents aka Hyzhak 
	 * 
	 */
	
	public class MyCommand
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
		
		public function MyCommand()
		{
			trace(getQualifiedClassName(this) + ".MyCommands()");
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
		public function execute (event:MyEvent) : void 
		{
			var strMsg:String = getQualifiedClassName(this) + ".execute"
			trace(strMsg);
//			return new MyCommandResult();
			//return event.value.toString() + " add "+ Math.random().toString();
		}
		
		public function result (value:String) : void 
		{
			trace(getQualifiedClassName(this) + ".result");
			trace("value = "+value);
		}
		
		public function error (value:String) : void 
		{
			trace(getQualifiedClassName(this) + ".error");
			trace("fault = "+value);
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