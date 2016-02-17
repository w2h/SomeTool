package guild.command
{
   import com.tencent.morefun.framework.base.Command;
   import com.netease.protobuf.UInt64;
   import def.PluginDef;
   
   public class JoinGuildProtoCommand extends Command
   {
       
      public var guildId:UInt64;
      
      public var status:int;
      
      public function JoinGuildProtoCommand(param1:int = 2, param2:Boolean = true)
      {
         super(param1,param2);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.GUILD;
      }
   }
}
