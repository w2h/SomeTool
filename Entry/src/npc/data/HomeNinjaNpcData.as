package npc.data
{
   import flash.geom.Point;
   import serverProto.familyNinja.ProtoFamilyNinjaConf;
   
   public class HomeNinjaNpcData
   {
       
      public var classId:int;
      
      public var artId:int;
      
      public var name:String;
      
      public var hasChat:Boolean;
      
      public var jibanLvl:int;
      
      public var favour:int;
      
      public var pos:Point;
      
      public var ninjaInfo:ProtoFamilyNinjaConf;
      
      public function HomeNinjaNpcData()
      {
         super();
      }
   }
}
