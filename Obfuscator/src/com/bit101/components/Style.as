package com.bit101.components
{
   public class Style
   {
      
      public static var TEXT_BACKGROUND:uint = 16777215;
      
      public static var BACKGROUND:uint = 13421772;
      
      public static var BUTTON_FACE:uint = 16777215;
      
      public static var BUTTON_DOWN:uint = 15658734;
      
      public static var INPUT_TEXT:uint = 3355443;
      
      public static var LABEL_TEXT:uint = 6710886;
      
      public static var DROPSHADOW:uint = 0;
      
      public static var PANEL:uint = 15987699;
      
      public static var PROGRESS_BAR:uint = 16777215;
      
      public static var LIST_DEFAULT:uint = 16777215;
      
      public static var LIST_ALTERNATE:uint = 15987699;
      
      public static var LIST_SELECTED:uint = 13421772;
      
      public static var LIST_ROLLOVER:uint = 14540253;
      
      public static var embedFonts:Boolean = true;
      
      public static var fontName:String = "PF Ronda Seven";
      
      public static var fontSize:Number = 8;
      
      public static const DARK:String = "dark";
      
      public static const LIGHT:String = "light";
       
      public function Style()
      {
         super();
      }
      
      public static function setStyle(param1:String) : void
      {
         switch(param1)
         {
            case DARK:
               Style.BACKGROUND = 4473924;
               Style.BUTTON_FACE = 6710886;
               Style.BUTTON_DOWN = 2236962;
               Style.INPUT_TEXT = 12303291;
               Style.LABEL_TEXT = 13421772;
               Style.PANEL = 6710886;
               Style.PROGRESS_BAR = 6710886;
               Style.TEXT_BACKGROUND = 5592405;
               Style.LIST_DEFAULT = 4473924;
               Style.LIST_ALTERNATE = 3750201;
               Style.LIST_SELECTED = 6710886;
               Style.LIST_ROLLOVER = 7829367;
               break;
            case LIGHT:
            default:
               Style.BACKGROUND = 13421772;
               Style.BUTTON_FACE = 16777215;
               Style.BUTTON_DOWN = 15658734;
               Style.INPUT_TEXT = 3355443;
               Style.LABEL_TEXT = 6710886;
               Style.PANEL = 15987699;
               Style.PROGRESS_BAR = 16777215;
               Style.TEXT_BACKGROUND = 16777215;
               Style.LIST_DEFAULT = 16777215;
               Style.LIST_ALTERNATE = 15987699;
               Style.LIST_SELECTED = 13421772;
               Style.LIST_ROLLOVER = 14540253;
         }
      }
   }
}
