package org.hyzhak.experiments.parsley01.configs
{
	import org.hyzhak.experiments.parsley01.IInjectionItem;
	import org.hyzhak.experiments.parsley01.containers.InjectionContainer;
	import org.hyzhak.experiments.parsley01.containers.InjectionSubContainer;
	import org.hyzhak.experiments.parsley01.items.InjectionItem1;
	import org.hyzhak.experiments.parsley01.items.InjectionItem2;
	import org.hyzhak.experiments.parsley01.items.InjectionItem3;
	
	/**
	 * 
	 * @project	Experiment Parsley 01
	 * 
	 * @data	Aug 27, 2011 / 10:36:54 PM
	 * 
	 * @author	Eugene Krevents aka Hyzhak 
	 * 
	 */
	
	public class MyConfig
	{
		[Context(Main)]
		//----------------------------------
		//  constants
		//----------------------------------
		
		//----------------------------------
		//  params 
		//----------------------------------
		
		//----------------------------------
		//  constructor 
		//----------------------------------
		
		public function MyConfig()
		{
		}
		
		//--------------------------------------------------------------------------
		//
		//  Getters&setters
		//
		//--------------------------------------------------------------------------
/*
		<object	id="first"				type="org.hyzhak.experiments.parsley01.items.InjectionItem1">
			<constructor-args>
				<string>http://www.bookstore.com/services/</string>
			</constructor-args>
			<property name="timeout" 	value="3000"/>		
		</object>
*/			
		[ObjectDefinition(id="first")]
		public function get item():IInjectionItem
		{
			return new InjectionItem3();
		}
		
/*	   
		<object	id="second"				type="org.hyzhak.experiments.parsley01.items.InjectionItem2"	lazy="true"	singleton="false"/>
*/		
		
		[ObjectDefinition(id="second", singleton="false", lazy="true")]
		public function get item2():InjectionItem2
		{
			return new InjectionItem2();
		}
		
/*
	   <object	id="root"				type="org.hyzhak.experiments.parsley01.containers.InjectionContainer"/>
*/
		
//		public function get rootContainer():InjectionContainer
//		{
//			return new InjectionContainer();
//		}
		
/*		
	   <object	id="sub"				type="org.hyzhak.experiments.parsley01.containers.InjectionSubContainer"/>			
*/
		/*
		public function get subContainer():InjectionSubContainer
		{
			return new InjectionSubContainer();
		}
		*/
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