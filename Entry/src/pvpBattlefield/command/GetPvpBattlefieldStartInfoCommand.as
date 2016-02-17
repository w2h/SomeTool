package pvpBattlefield.command
{
   import com.tencent.morefun.framework.base.Command;
   import serverProto.inc.ProtoLocationInfo;
   import def.PluginDef;
   
   public class GetPvpBattlefieldStartInfoCommand extends Command
   {
       
      public var location:ProtoLocationInfo;
      
      public function GetPvpBattlefieldStartInfoCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.PVPBATTLEFIELD;
      }
   }
}
