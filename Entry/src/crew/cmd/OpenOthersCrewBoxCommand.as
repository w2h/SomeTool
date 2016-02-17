package crew.cmd
{
   import com.tencent.morefun.framework.base.Command;
   import serverProto.inc.ProtoPlayerKey;
   import def.PluginDef;
   
   public class OpenOthersCrewBoxCommand extends Command
   {
       
      public var playerKey:ProtoPlayerKey;
      
      public function OpenOthersCrewBoxCommand(param1:ProtoPlayerKey)
      {
         super();
         this.playerKey = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.CREW;
      }
   }
}
