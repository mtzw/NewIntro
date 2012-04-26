package jp.mtzw.web.intro.behavior
{
	import jp.akb7.yui.core.ns.handler;
	import jp.mtzw.web.intro.helper.IntroHelper;

	public class IntroNavigateBehavior
	{
		public var helper:IntroHelper;

		handler function button1_click():void {
			helper.navigateToBlog();
		}

		handler function button2_click():void {
			helper.navigateToBlog();
		}

		handler function button3_click():void {
			helper.navigateToBlog();
		}

		handler function button4_click():void {
			helper.navigateToBlog();
		}

		handler function button5_click():void {
			helper.navigateToBlog();
		}

		handler function button6_click():void {
			helper.navigateToBlog();
		}
	}
}