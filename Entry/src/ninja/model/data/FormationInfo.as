package ninja.model.data
{
   public class FormationInfo
   {
       
      public var id:uint;
      
      public var arranges:Vector.<ninja.model.data.NinjaArrangeInfo>;
      
      public var hotkey:ninja.model.data.NinjaHotkeyInfo;
      
      public var combat:uint;
      
      public var leadershipUsed:uint;
      
      public var leadershipMax:uint;
      
      public var maxFormationNum:uint;
      
      public var level:int;
      
      public var formationIndex:uint;
      
      public var formationName:Vector.<String>;
      
      public function FormationInfo()
      {
         super();
      }
   }
}
