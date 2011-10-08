package org.hyzhak.experiments.parsley01
{
	
	/**
	 * 
	 * @project	Experiment Parsley 01
	 * 
	 * @data	Aug 26, 2011 / 12:23:52 AM
	 * 
	 * @author	Eugene Krevents aka Hyzhak 
	 * 
	 */
	
	public interface IInjectionContainer
	{
		[Inject(id="first")]
		function get param1():IInjectionItem;		
		function set param1(value:IInjectionItem):void;
		
		[Inject(id="second")]
		function get param2():IInjectionItem;		
		function set param2(value:IInjectionItem):void;		
		
		function test1():void
	}
}