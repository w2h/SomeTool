package tactic.model.data
{
   import bag.data.ItemData;
   
   public class TacticInfo
   {
       
      public var index:uint;
      
      public var name:String;
      
      public var level:uint;
      
      public var positions:Vector.<tactic.model.data.TacticPositionInfo>;
      
      public var levelUpReelCount:uint;
      
      public var levelUpHaveRellCount:uint;
      
      public var levelUpAvailable:Boolean;
      
      public var reals:Vector.<ItemData>;
      
      public var using:Boolean;
      
      public var selected:Boolean;
      
      public function TacticInfo()
      {
         super();
      }
   }
}
