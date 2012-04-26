package jp.mtzw.web.intro.utils
{
	import a24.tween.Ease24;

	import org.as3commons.collections.Map;

	public class TweenUtils
	{
		private static const EASE_MAP:Map = new Map();

		{
			EASE_MAP.add(EASE_MAP.size, Ease24._1_SineIn);
			EASE_MAP.add(EASE_MAP.size, Ease24._1_SineInOut);
			EASE_MAP.add(EASE_MAP.size, Ease24._1_SineOut);
			EASE_MAP.add(EASE_MAP.size, Ease24._1_SineOutIn);
			EASE_MAP.add(EASE_MAP.size, Ease24._2_QuadIn);
			EASE_MAP.add(EASE_MAP.size, Ease24._2_QuadInOut);
			EASE_MAP.add(EASE_MAP.size, Ease24._2_QuadOut);
			EASE_MAP.add(EASE_MAP.size, Ease24._2_QuadOutIn);
			EASE_MAP.add(EASE_MAP.size, Ease24._3_CubicIn);
			EASE_MAP.add(EASE_MAP.size, Ease24._3_CubicInOut);
			EASE_MAP.add(EASE_MAP.size, Ease24._3_CubicOut);
			EASE_MAP.add(EASE_MAP.size, Ease24._3_CubicOutIn);
			EASE_MAP.add(EASE_MAP.size, Ease24._4_QuartIn);
			EASE_MAP.add(EASE_MAP.size, Ease24._4_QuartInOut);
			EASE_MAP.add(EASE_MAP.size, Ease24._4_QuartOut);
			EASE_MAP.add(EASE_MAP.size, Ease24._4_QuartOutIn);
			EASE_MAP.add(EASE_MAP.size, Ease24._5_QuintIn);
			EASE_MAP.add(EASE_MAP.size, Ease24._5_QuintInOut);
			EASE_MAP.add(EASE_MAP.size, Ease24._5_QuintOut);
			EASE_MAP.add(EASE_MAP.size, Ease24._5_QuintOutIn);
			EASE_MAP.add(EASE_MAP.size, Ease24._6_ExpoIn);
			EASE_MAP.add(EASE_MAP.size, Ease24._6_ExpoInOut);
			EASE_MAP.add(EASE_MAP.size, Ease24._6_ExpoOut);
			EASE_MAP.add(EASE_MAP.size, Ease24._6_ExpoOutIn);
			EASE_MAP.add(EASE_MAP.size, Ease24._7_CircIn);
			EASE_MAP.add(EASE_MAP.size, Ease24._7_CircInOut);
			EASE_MAP.add(EASE_MAP.size, Ease24._7_CircOut);
			EASE_MAP.add(EASE_MAP.size, Ease24._7_CircOutIn);
			EASE_MAP.add(EASE_MAP.size, Ease24._BackIn);
			EASE_MAP.add(EASE_MAP.size, Ease24._BackInOut);
			EASE_MAP.add(EASE_MAP.size, Ease24._BackOut);
			EASE_MAP.add(EASE_MAP.size, Ease24._BackOutIn);
			EASE_MAP.add(EASE_MAP.size, Ease24._BounceIn);
			EASE_MAP.add(EASE_MAP.size, Ease24._BounceInOut);
			EASE_MAP.add(EASE_MAP.size, Ease24._BounceOut);
			EASE_MAP.add(EASE_MAP.size, Ease24._BounceOutIn);
		}

		public static function randomEase():Function {
			var random:uint = Math.random() * EASE_MAP.size;
			var easeFunc:Function =  EASE_MAP.itemFor(random) as Function;
			if (null == easeFunc) {
				return randomEase();
			}
			return easeFunc;
		}

	}
}