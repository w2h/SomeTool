package crew.data
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import cfgData.CFGDataLibs;
   import cfgData.CFGDataEnum;
   import cfgData.dataStruct.MoodInfoCFG;
   
   public class MoodConfig
   {
      
      public static var bin:ByteArray;
      
      private static var inited:Boolean;
      
      private static var moodCfgMap:Dictionary = new Dictionary();
       
      public function MoodConfig()
      {
         super();
      }
      
      private static function init() : void
      {
         var _loc1_:MoodCfgData = null;
         if(inited == true)
         {
            return;
         }
         inited = true;
         moodCfgMap = CFGDataLibs.parseData(bin,CFGDataEnum.ENUM_MoodInfoCFG);
      }
      
      public static function getMoodCfgData(param1:int) : MoodInfoCFG
      {
         init();
         return moodCfgMap[param1];
      }
   }
}
