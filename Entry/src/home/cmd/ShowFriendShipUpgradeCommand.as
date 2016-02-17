package home.cmd
{
   import com.tencent.morefun.framework.base.Command;
   import serverProto.familyNinja.ProtoFamilyNinjaConf;
   import serverProto.familyNinja.ProtoFamilyNinjaTotalConf;
   import def.PluginDef;
   
   public class ShowFriendShipUpgradeCommand extends Command
   {
       
      public var classId:int;
      
      public var level:int;
      
      public var ninjiaConf:ProtoFamilyNinjaConf;
      
      public var totalNinjiaConf:ProtoFamilyNinjaTotalConf;
      
      public function ShowFriendShipUpgradeCommand(param1:int, param2:int, param3:ProtoFamilyNinjaConf, param4:ProtoFamilyNinjaTotalConf)
      {
         super();
         this.classId = param1;
         this.level = param2;
         this.ninjiaConf = param3;
         this.totalNinjiaConf = param4;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.HOME;
      }
   }
}
