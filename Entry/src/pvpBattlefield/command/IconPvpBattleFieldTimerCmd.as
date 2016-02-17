package pvpBattlefield.command
{
   import com.tencent.morefun.framework.base.Command;
   import serverProto.battleRoyale.ProtoGetBattleRoyaleSchemaResp;
   import def.PluginDef;
   
   public class IconPvpBattleFieldTimerCmd extends Command
   {
       
      public var status:int = 0;
      
      public var result:ProtoGetBattleRoyaleSchemaResp;
      
      public function IconPvpBattleFieldTimerCmd()
      {
         super(2);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.PVPBATTLEFIELD;
      }
   }
}
