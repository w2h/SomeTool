package RSModel.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class RSModelCommand extends Command
   {
       
      public var errorCode:int;
      
      public function RSModelCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RSMODEL;
      }
   }
}
