package jp.mtzw.web.intro.action
{
	import jp.akb7.yui.ns.behavior;
	import jp.mtzw.web.intro.behavior.IntroInitializeBehavior;
	import jp.mtzw.web.intro.behavior.IntroNavigateBehavior;
	import jp.mtzw.web.intro.behavior.IntroTweenBehavior;

	public class IntroAction
	{
		behavior var initialize:IntroInitializeBehavior;

		behavior var tween:IntroTweenBehavior;

		behavior var navigate:IntroNavigateBehavior;
	}
}