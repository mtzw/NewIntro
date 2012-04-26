package jp.mtzw.web.intro.helper
{
	import a24.tween.Tween24;

	import flash.net.URLRequest;
	import flash.net.navigateToURL;

	import jp.akb7.yui.message.MessageManager;
	import jp.akb7.yui.ns.viewpart;
	import jp.mtzw.web.intro.utils.TweenUtils;

	import mx.core.FlexGlobals;

	import spark.components.BorderContainer;
	import spark.components.Button;

	use namespace viewpart;

	public class IntroHelper
	{
		viewpart var container1:BorderContainer;
		viewpart var button1:Button;
		viewpart var container2:BorderContainer;
		viewpart var button2:Button;
		viewpart var container3:BorderContainer;
		viewpart var button3:Button;
		viewpart var container4:BorderContainer;
		viewpart var button4:Button;
		viewpart var container5:BorderContainer;
		viewpart var button5:Button;
		viewpart var container6:BorderContainer;
		viewpart var button6:Button;

		public function moveButton(num:int):void {
			var button:Button = this["button" + num] as Button;
			var container:BorderContainer = this["container" + num] as BorderContainer;

			if (button.y <= 15) {
				moveButtonTopToBottom(button, container);
			} else {
				moveButtonBottomToTop(button);
			}
		}

		public function configureLayout():void {
			container1.width = groupWidth;
			container1.height = groupHeight;
			container2.width = groupWidth;
			container2.height = groupHeight;
			container3.width = groupWidth;
			container3.height = groupHeight;
			container4.width = groupWidth;
			container4.height = groupHeight;
			container5.width = groupWidth;
			container5.height = groupHeight;
			container6.width = groupWidth;
			container6.height = groupHeight;

			button1.x = container1.width / 3;
			button1.y = 15;
			button2.x = container2.width / 3;
			button2.y = container2.height - 50;
			button3.x = container3.width / 3;
			button3.y = 15;
			button4.x = container1.width / 3;
			button4.y = container2.height - 50;
			button5.x = container2.width / 3;
			button5.y = 15;
			button6.x = container3.width / 3;
			button6.y = container2.height - 50;
		}

		public function navigateToBlog():void {
			navigateToURL(new URLRequest(MessageManager.application.getMessage("blog.url")), "_self");
		}

		private static function get groupWidth():int {
			return (FlexGlobals.topLevelApplication.width / 3) - 10;
		}

		private static function get groupHeight():int {
			return (FlexGlobals.topLevelApplication.height / 2) - 15;
		}

		private static function moveButtonTopToBottom(target:Button, container:BorderContainer):void {
			Tween24.tween(target, 1, TweenUtils.randomEase()).y(container.height - 50).play();
		}

		private static function moveButtonBottomToTop(target:Button):void {
			Tween24.tween(target, 1, TweenUtils.randomEase()).y(15).play();
		}

	}
}