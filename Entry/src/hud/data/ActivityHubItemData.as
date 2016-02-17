package hud.data
{
   public class ActivityHubItemData
   {
      
      public static const TYPE_TODAY:int = 1;
      
      public static const TYPE_TODAY_ITEM:int = 2;
      
      public static const TYPE_OTHER:int = 3;
      
      public static const TYPE_OTHER_ITEM:int = 4;
       
      public var id:uint;
      
      public var day:String;
      
      public var status:int;
      
      public var time:String;
      
      public var remainderTime:int;
      
      public var allTime:int;
      
      public var meetSpecialCondition:Boolean;
      
      public var selected:Boolean;
      
      public var type:int;
      
      public function ActivityHubItemData()
      {
         super();
      }
   }
}
