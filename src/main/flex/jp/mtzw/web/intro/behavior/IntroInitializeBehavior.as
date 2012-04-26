package jp.mtzw.web.intro.behavior
{
	import jp.akb7.yui.core.ns.handler;
	import jp.akb7.yui.logging.debug;
	import jp.mtzw.web.intro.helper.IntroHelper;

	public class IntroInitializeBehavior
	{
		public var helper:IntroHelper;

		handler function onViewInitialized():void {
			debug(this, "onViewInitialized.");
			helper.configureLayout();
		}

		handler function onApplicationStart():void {
			debug(this, "onApplicationStart.");
		}
	}
}