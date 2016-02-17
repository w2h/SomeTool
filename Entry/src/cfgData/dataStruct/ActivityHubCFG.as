package cfgData.dataStruct
{
   public class ActivityHubCFG
   {
       
      public var id:uint;
      
      public var aid:uint;
      
      public var name:String = "";
      
      public var days:Array;
      
      public var dailyBeginTime:String = "";
      
      public var dailyEndTime:String = "";
      
      public var conditionDesc:String = "";
      
      public var numText:String = "";
      
      public var rule:String = "";
      
      public var rewardDesc:String = "";
      
      public var reward:String = "";
      
      public var href:String = "";
      
      public var previewImage:uint;
      
      public var bgImage:uint;
      
      public function ActivityHubCFG()
      {
         this.days = new Array();
         super();
      }
   }
}
