package friend.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenAssistorBoxCommand extends Command
   {
       
      public var dungeonId:int;
      
      public var assistorInfoArr:Array;
      
      public function OpenAssistorBoxCommand(param1:int, param2:Array)
      {
         super();
         this.dungeonId = param1;
         this.assistorInfoArr = param2;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.FRIEND;
      }
   }
}
