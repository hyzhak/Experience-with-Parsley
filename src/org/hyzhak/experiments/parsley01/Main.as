package org.hyzhak.experiments.parsley01
{
	import flash.display.Sprite;
	
	import org.hyzhak.experiments.parsley01.bindings.MyBindPublisher;
	import org.hyzhak.experiments.parsley01.bindings.MyBindSubscriber;
	import org.hyzhak.experiments.parsley01.configs.MyConfig;
	import org.hyzhak.experiments.parsley01.containers.InjectionContainer;
	import org.hyzhak.experiments.parsley01.containers.InjectionSubContainer;
	import org.hyzhak.experiments.parsley01.items.InjectionItem1;
	import org.hyzhak.experiments.parsley01.items.InjectionItem2;
	import org.hyzhak.experiments.parsley01.lifecycle.MyFactory;
	import org.hyzhak.experiments.parsley01.lifecycle.MyUser;
	import org.hyzhak.experiments.parsley01.messaging.DispatcherContainer;
	import org.hyzhak.experiments.parsley01.messaging.IMyMessageDispatcher;
	import org.hyzhak.experiments.parsley01.messaging.commands.MyCommand;
	import org.hyzhak.experiments.parsley01.messaging.commands.MyCommandResult;
	import org.hyzhak.experiments.parsley01.messaging.dispatchers.MyMessageDispatcher;
	import org.hyzhak.experiments.parsley01.messaging.dispatchers.MyMessageSelfDispatcher;
	import org.hyzhak.experiments.parsley01.messaging.handlers.MyMessageHandler;
	import org.spicefactory.parsley.asconfig.ActionScriptContextBuilder;
	import org.spicefactory.parsley.core.context.Context;
	import org.spicefactory.parsley.core.events.ContextEvent;
	import org.spicefactory.parsley.dsl.context.ContextBuilder;
	import org.spicefactory.parsley.xml.XmlConfig;
	
	
	/**
	 * 
	 * @project	Experiment Parsley 01
	 * 
	 * @data	Aug 23, 2011 / 5:53:30 PM
	 * 
	 * @author	Eugene Krevents aka Hyzhak 
	 * 
	 */
	
	public class Main extends Sprite
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

		private var _contextXML:Context;
		private var _contextActionScript:Context;
		
		public function Main()
		{
//			_contextXML = XmlContextBuilder.build("../assets/config.xml");			
//			_contextXML.addEventListener(ContextEvent.INITIALIZED, onInitialized);
			
			_contextActionScript = ActionScriptContextBuilder.build(MyConfig);
			
			
			ContextBuilder.newBuilder()
				//5 Decoupled Bindings				
//				.config(ActionScriptConfig.forClass(MyConfigForBindings))
//				.config(XmlConfig.forFile("../assets/config.xml"))
				
				//6 
//				.config(XmlConfig.forFile("../assets/messaging-config.xml"))
				.config(XmlConfig.forFile("../assets/object-lifecycle-config.xml"))
//				.object(new InjectionContainer())
				.build();
			
		}
		
		private function onInitialized(event:ContextEvent):void
		{
			var container:InjectionSubContainer = _contextXML.getObjectByType(InjectionSubContainer) as InjectionSubContainer;
			container.test1();
			
			var subContainer:IInjectionContainer = _contextXML.getObject("root") as IInjectionContainer;			
			subContainer.test1();
						
			var dispatcher:IMyMessageDispatcher;			
			dispatcher = _contextXML.getObjectByType(MyMessageDispatcher) as IMyMessageDispatcher;
			
			var handler:IMyHandler = _contextXML.getObjectByType(MyMessageHandler) as IMyHandler;			
			dispatcher.dispatchMyEvent();
						
			dispatcher = _contextXML.getObjectByType(MyMessageSelfDispatcher) as IMyMessageDispatcher;
			dispatcher.dispatchMyEvent();
			
			InjectionItem1;
			InjectionItem2;
			
			InjectionContainer;
			InjectionSubContainer;
			
			DispatcherContainer;
			MyMessageDispatcher;
			MyMessageSelfDispatcher;
			MyCommand;
			MyCommandResult;
			
			MyMessageHandler;
			
			MyBindPublisher;
			MyBindSubscriber;
			
			//lifecycle
			MyFactory;
			MyUser;
			
			//			var myDispatcher:MyMessageDispatcher = new MyMessageDispatcher();
			//			myDispatcher.testDispatch();
			//			
			//			var myDispatcher02:MyMessageDispatcher02 = new MyMessageDispatcher02();
			//			myDispatcher02.testDispatch();
			
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