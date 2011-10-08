package org.hyzhak.experiments.parsley01.configs
{
	import org.hyzhak.experiments.parsley01.bindings.MyBindPublisher;
	import org.hyzhak.experiments.parsley01.bindings.MyBindSubscriber;
	import org.hyzhak.experiments.parsley01.bindings.MyBindValue;
	
	/**
	 * 
	 * @project	Experiment Parsley 01
	 * 
	 * @data	Aug 30, 2011 / 8:26:58 PM
	 * 
	 * @author	Eugene Krevents aka Hyzhak 
	 * 
	 */
	
	public class MyConfigForBindings
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
		
		public function MyConfigForBindings()
		{
		}
		
		//--------------------------------------------------------------------------
		//
		//  Getters&setters
		//
		//--------------------------------------------------------------------------
		public function get publisher():MyBindPublisher
		{
			return new MyBindPublisher();
		}
		
		public function get subsriber():MyBindSubscriber
		{
			return new MyBindSubscriber();
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