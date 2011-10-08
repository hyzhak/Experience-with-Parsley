package org.hyzhak.experiments.parsley01.containers
{
	import flash.utils.getQualifiedClassName;
	
	import org.hyzhak.experiments.parsley01.IInjectionContainer;
	import org.hyzhak.experiments.parsley01.IInjectionItem;
	import org.spicefactory.parsley.core.context.Context;
	
	/**
	 * 
	 * @project	Experiment Parsley 01
	 * 
	 * @data	Aug 24, 2011 / 12:52:52 PM
	 * 
	 * @author	Eugene Krevents aka Hyzhak 
	 * 
	 */
	
	//следует обработать интерфейс
	[ProcessInterfaces]
	
	public class InjectionContainer implements IInjectionContainer
	{
		
		//----------------------------------
		//  constants
		//----------------------------------
		
		//----------------------------------
		//  params 
		//----------------------------------
		private var _param1:IInjectionItem;
		private var _param2:IInjectionItem;
		
		private var _context:Context;
		
		//----------------------------------
		//  constructor 
		//----------------------------------
		
		public function InjectionContainer()
		{
			
		}
		
		//--------------------------------------------------------------------------
		//
		//  Getters&setters
		//
		//--------------------------------------------------------------------------
		
		public function get param1():IInjectionItem
		{
			return _param1;
		}
		
		public function set param1(value:IInjectionItem):void
		{
			_param1 = value;
		}
		
		public function get param2():IInjectionItem
		{
			return _param2;
		}
		
		public function set param2(value:IInjectionItem):void
		{
			_param2 = value;
		}
		
		public function get context():Context
		{
			return _context;
		}
		
		public function set context(value:Context):void
		{
			_context = value;
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
		[Init]
		public function test1():void
		{
			trace("test1 [" + getQualifiedClassName(this) + "]");
			trace("param1 = " + param1);
			trace("param1.value = "+param1.value);
			trace("param2 = " + param2);
			trace("param2.value = "+param2.value);
//			for (var strParam:String in param1)
//			{
//				trace("param["+strParam+"] = " + param1[strParam]); 
//			}
			
			trace("context="+context);
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