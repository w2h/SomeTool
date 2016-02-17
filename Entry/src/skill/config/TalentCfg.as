package skill.config
{
   public class TalentCfg
   {
       
      public var id:uint;
      
      public var name:String;
      
      public var category:int;
      
      public var group:int;
      
      public var unlockType:int;
      
      public var unlockLevel:int;
      
      public var desc:String;
      
      public var skillId:int;
      
      public function TalentCfg()
      {
         super();
      }
      
      public function parse(param1:XML) : void
      {
         this.id = param1.@id;
         this.name = param1.@name;
         this.desc = param1.@desc;
         this.category = param1.@category;
         this.group = param1.@cdgroup;
         this.unlockType = param1.@unlockType;
         this.unlockLevel = param1.@unlockLevel;
         this.skillId = param1.@skillId;
      }
   }
}
