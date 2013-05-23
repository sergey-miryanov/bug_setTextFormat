package;

import nme.display.StageAlign;
import nme.display.StageScaleMode;
import nme.display.Sprite;
import nme.events.Event;
import nme.events.KeyboardEvent;
import nme.Lib;
import nme.ui.Keyboard;

import nme.Assets;
import nme.display.Bitmap;
import nme.display.BitmapData;
import nme.utils.ByteArray;
import nme.Memory;
import nme.text.TextField;
import nme.text.TextFormat;
import nme.text.TextFormatAlign;

class Main extends Sprite
{
  public function new ()
  {
    super();

    if (stage != null)
      init();
    else
      addEventListener(Event.ADDED_TO_STAGE, init);
  }

  private function init(?e:Event = null):Void
  {
    if (hasEventListener(Event.ADDED_TO_STAGE))
    {
      removeEventListener(Event.ADDED_TO_STAGE, init);
    }

    initialize();

    var t = new TextField();
    t.x = 50;
    t.y = 50;
    t.text = "";

    var f = new TextFormat(Assets.getFont("assets/Agency FB.TTF").fontName, 20, 0xff0000);
    f.size = 20;
    f.font = Assets.getFont("assets/Agency FB.TTF").fontName;
    f.align = TextFormatAlign.CENTER;

    t.defaultTextFormat = f;
    t.embedFonts = true;
    t.setTextFormat(f);

    var t2 = new TextField();
    t2.text = "TT EE SS TT";
    t2.x = 50;
    t2.y = 100;

    t2.defaultTextFormat = f;
    t2.embedFonts = true;
    t2.setTextFormat(f);


    addChild(t);
    addChild(t2);
  }

  private function initialize():Void
  {
    Lib.current.stage.align = StageAlign.TOP_LEFT;
    Lib.current.stage.scaleMode = StageScaleMode.NO_SCALE;
  }

  // Entry point
  public static function main()
  {
    Lib.current.addChild(new Main());
  }

}
