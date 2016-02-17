package guildBeast.def
{
   public class GuildBeastColorDef
   {
      
      private static const colorArr:Array = [0,16777215,52784,1815028,11822079,16759296,16019822];
      
      private static const colorNameArr:Array = ["","green","green","blue","purple","orange","red"];
       
      public function GuildBeastColorDef()
      {
         super();
      }
      
      public static function getColor(param1:int) : uint
      {
         var _loc2_:* = 0;
         if(param1 <= 0)
         {
            _loc2_ = 1;
         }
         else if(param1 > colorArr.length - 1)
         {
            _loc2_ = colorArr.length - 1;
         }
         else
         {
            _loc2_ = param1;
         }
         return colorArr[_loc2_] as uint;
      }
      
      public static function getColorName(param1:int) : String
      {
         var _loc2_:* = 0;
         if(param1 <= 0)
         {
            _loc2_ = 1;
         }
         else if(param1 > colorNameArr.length - 1)
         {
            _loc2_ = colorNameArr.length - 1;
         }
         else
         {
            _loc2_ = param1;
         }
         return colorNameArr[_loc2_] as String;
      }
   }
}
