package jp.mtzw.web.intro.behavior
{
	import jp.akb7.yui.core.ns.handler;
	import jp.mtzw.web.intro.helper.IntroHelper;

	public class IntroTweenBehavior
	{
		public var helper:IntroHelper;

		handler function button1_rollOver():void {
			helper.moveButton(1);
		}

		handler function button2_rollOver():void {
			helper.moveButton(2);
		}

		handler function button3_rollOver():void {
			helper.moveButton(3);
		}

		handler function button4_rollOver():void {
			helper.moveButton(4);
		}

		handler function button5_rollOver():void {
			helper.moveButton(5);
		}

		handler function button6_rollOver():void {
			helper.moveButton(6);
		}
	}
}