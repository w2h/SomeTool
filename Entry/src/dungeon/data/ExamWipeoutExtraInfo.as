package dungeon.data
{
   public class ExamWipeoutExtraInfo
   {
      
      public static const MAX_WIPE_OUT_LEVEL:int = 100;
      
      public static const WIPE_OUT_DELTA_TIME:uint = 1;
       
      public var name:String;
      
      public var level:uint;
      
      public var currentLevel:uint;
      
      public var deltaTime:uint;
      
      public var freeCount:uint;
      
      public var userUpperLevel:uint;
      
      public var rank:uint;
      
      public var exp:uint;
      
      public function ExamWipeoutExtraInfo()
      {
         super();
      }
   }
}
