package jp.mtzw.web.intro.action
{
	import jp.akb7.yui.core.ns.handler;
	import jp.akb7.yui.logging.debug;
	import jp.mtzw.web.intro.helper.IntroHelper;

	public class IntroAction
	{
		public var helper:IntroHelper;

		handler function onViewInitialized():void {
			debug(this, "onViewInitialized.");
			helper.configureLayout();
		}

		handler function onApplicationStart():void {
			debug(this, "onApplicationStart.");
		}

		handler function button1_rollOver():void {
			helper.moveButton(1);
		}

		handler function button1_click():void {
			helper.navigateToBlog();
		}

		handler function button2_rollOver():void {
			helper.moveButton(2);
		}

		handler function button2_click():void {
			helper.navigateToBlog();
		}

		handler function button3_rollOver():void {
			helper.moveButton(3);
		}

		handler function button3_click():void {
			helper.navigateToBlog();
		}

		handler function button4_rollOver():void {
			helper.moveButton(4);
		}

		handler function button4_click():void {
			helper.navigateToBlog();
		}

		handler function button5_rollOver():void {
			helper.moveButton(5);
		}

		handler function button5_click():void {
			helper.navigateToBlog();
		}

		handler function button6_rollOver():void {
			helper.moveButton(6);
		}

		handler function button6_click():void {
			helper.navigateToBlog();
		}

	}
}