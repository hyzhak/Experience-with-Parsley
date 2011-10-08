package org.hyzhak.experiments.parsley01.utils
{
	import org.spicefactory.lib.reflect.types.Void;
	
	/**
	 * 
	 * @project	Experiment Parsley 01
	 * 
	 * @data	Oct 9, 2011 / 12:00:30 AM
	 * 
	 * @author	Eugene Krevents aka Hyzhak 
	 * 
	 */
	
	public interface IMyLogger
	{
		function log(sender:Object, message:String):void;
		function logSimple(message:String):void;
		function logCreateClass(sender:Object):void;
	}
}