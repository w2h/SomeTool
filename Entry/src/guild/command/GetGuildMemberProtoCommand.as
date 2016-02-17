package guild.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class GetGuildMemberProtoCommand extends Command
   {
       
      public var status:int = -1;
      
      public var applyNum:int = 0;
      
      public var memberList:Array = null;
      
      public function GetGuildMemberProtoCommand(param1:int = 2, param2:Boolean = true)
      {
         super(param1,param2);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.GUILD;
      }
   }
}
