package
{
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class Game extends Sprite
	{
		private var screenWolcome:Welcome;
		
		public function Game()
		{
			super();
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(event:Event):void
		{
			trace("starling framework initialized!");
			
			screenWolcome = new Welcome();
			addChild(screenWolcome);
			screenWolcome.initialize();
		}
	}
}