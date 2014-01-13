package  
{
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	
	import com.greensock.TweenLite;
	
	/**
	 * ...
	 * @author Jesus
	 */
	public class Welcome extends Sprite 
	{
		private var bg:Image;
		private var title:Image;
		private var hero:Image;
		
		private var playBtn:Button;
		
		public function Welcome() 
		{
			super();
			addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(event:Event):void
		{
			trace("welcome init");
			
			drawScreen();
		}
		
		private function drawScreen():void
		{
			bg = new Image(Assets.getTexture("BgWelcome"));
			addChild(bg);
			
			playBtn = new Button(Assets.getTexture("PlayButton"));
			playBtn.x = 500;
			playBtn.y = 260;
			addChild(playBtn);
			
			hero = new Image(Assets.getTexture("HeroBitmap"));
			hero.x = -hero.width;
			hero.y = 100;
			addChild(hero);
			
		}
		
		public function initialize():void
		{
			visible = true;
			
			hero.x = -hero.width;
			hero.y = 100;			
			
			TweenLite.to(hero, 2, { x:80 } );
			
			addEventListener(Event.ENTER_FRAME, heroAnimation);
		}		
		
		private function heroAnimation(event:Event):void
		{
			var currentDate:Date = new Date();
			hero.y = 100 + Math.cos(currentDate.getTime() * 0.002) * 25;
			
			playBtn.y = 260 + Math.cos(currentDate.getTime() * 0.002) * 10;
		}
	}

}