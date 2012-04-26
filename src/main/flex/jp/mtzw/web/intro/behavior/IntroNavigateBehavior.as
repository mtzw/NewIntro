package jp.mtzw.web.intro.behavior
{
	import jp.akb7.yui.core.ns.handler;
	import jp.akb7.yui.logging.debug;
	import jp.akb7.yui.rpc.RemotingService;
	import jp.akb7.yui.service.ns.rpc_result;
	import jp.mtzw.web.intro.helper.IntroHelper;

	public class IntroNavigateBehavior
	{
		public var helper:IntroHelper;
		public var introService:RemotingService;

		handler function button1_click():void {
			helper.navigateToBlog();
		}

		handler function button2_click():void {
			introService.invokeMethod("getBlogUrl", []).setResponder(this);
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

		rpc_result function introService_getBlogUrl(url:String):void {
			debug(this, url);
		}
	}
}