package gvg.data
{
   public class GvgInfo
   {
       
      public var status:int;
      
      public var round:int;
      
      public var gifts:Array;
      
      public var dispatchRecordArr:Array;
      
      public var preFinalEndTime:Number;
      
      public var preFinalTeams:Array;
      
      public var finalEndTime:Number;
      
      public var finalResult:gvg.data.GvgFinalResultData;
      
      public var hasSignedUp:Boolean;
      
      public var canEnter:Boolean;
      
      public var can_enter_status:int;
      
      public var refreshTime:Number;
      
      public function GvgInfo()
      {
         super();
      }
   }
}
