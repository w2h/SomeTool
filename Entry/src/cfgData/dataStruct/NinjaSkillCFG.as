package cfgData.dataStruct
{
   public class NinjaSkillCFG
   {
       
      public var id:uint;
      
      public var star:int;
      
      public var normals:Array;
      
      public var specials:Array;
      
      public var skills:Array;
      
      public var binding:Array;
      
      public var normalItemIds:Array;
      
      public var specialItemIds:Array;
      
      public var skillItemIds:Array;
      
      public function NinjaSkillCFG()
      {
         this.normals = new Array();
         this.specials = new Array();
         this.skills = new Array();
         this.binding = new Array();
         this.normalItemIds = new Array();
         this.specialItemIds = new Array();
         this.skillItemIds = new Array();
         super();
      }
   }
}
