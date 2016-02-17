package crew.def
{
   public class NinjaNameColorDef
   {
      
      private static const strenthenLeveltoColor:Array = [52784,1815028,1815028,1815028,1815028,11822079,11822079,11822079,11822079,16759296,16759296,16759296,16759296,16759296,16019822,16019822,16019822,16019822,16019822,16019822,16019822];
      
      private static const strenthenLevelToColorName:Array = ["green","blue","blue","blue","blue","purple","purple","purple","purple","orange","orange","orange","orange","orange","red","red","red","red","red","red","red"];
      
      private static const strenthenLevelToNameAppendStr:Array = ["","","+1","+2","+3","","+1","+2","+3","","+1","+2","+3","+4","","+1","+2","+3","+4","+5","+6"];
      
      private static const strenthenLevelToFrameIndex:Array = [1,2,2,2,2,3,3,3,3,4,4,4,4,4,5,5,5,5,5,5,5];
      
      private static const strenthenLevelToBgIndex:Array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,19,19];
       
      public function NinjaNameColorDef()
      {
         super();
      }
      
      public static function getNameTextColorByStrengthenLevel(param1:int) : uint
      {
         var _loc2_:* = 0;
         if(param1 < 0)
         {
            _loc2_ = 0;
         }
         else if(param1 > strenthenLeveltoColor.length - 1)
         {
            _loc2_ = strenthenLeveltoColor.length - 1;
         }
         else
         {
            _loc2_ = param1;
         }
         return strenthenLeveltoColor[_loc2_] as uint;
      }
      
      public static function getNameTextColorNameByStrengthenLevel(param1:int) : String
      {
         var _loc2_:* = 0;
         if(param1 < 0)
         {
            _loc2_ = 0;
         }
         else if(param1 > strenthenLevelToColorName.length - 1)
         {
            _loc2_ = strenthenLevelToColorName.length - 1;
         }
         else
         {
            _loc2_ = param1;
         }
         return strenthenLevelToColorName[_loc2_] as String;
      }
      
      public static function getNameAppendStrByStrengthenLevel(param1:int) : String
      {
         var _loc2_:* = 0;
         if(param1 < 0)
         {
            _loc2_ = 0;
         }
         else if(param1 > strenthenLevelToNameAppendStr.length - 1)
         {
            _loc2_ = strenthenLevelToNameAppendStr.length - 1;
         }
         else
         {
            _loc2_ = param1;
         }
         return strenthenLevelToNameAppendStr[_loc2_] as String;
      }
      
      public static function getFrameIndexByStrengthenLevel(param1:int) : int
      {
         var _loc2_:* = 0;
         if(param1 < 0)
         {
            _loc2_ = 0;
         }
         else if(param1 > strenthenLevelToFrameIndex.length - 1)
         {
            _loc2_ = strenthenLevelToFrameIndex.length - 1;
         }
         else
         {
            _loc2_ = param1;
         }
         return strenthenLevelToFrameIndex[_loc2_] as int;
      }
      
      public static function getBgIndexByStrengthenLevel(param1:int) : int
      {
         var _loc2_:* = 0;
         if(param1 < 0)
         {
            _loc2_ = 0;
         }
         else if(param1 > strenthenLevelToBgIndex.length - 1)
         {
            _loc2_ = strenthenLevelToBgIndex.length - 1;
         }
         else
         {
            _loc2_ = param1;
         }
         return strenthenLevelToBgIndex[_loc2_] as int;
      }
   }
}
