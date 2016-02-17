package ninjaStorage.command
{
   import com.tencent.morefun.framework.base.Command;
   import ninja.model.data.NinjaInfo;
   import def.PluginDef;
   
   public class RequestNinjaDetailInfoCommand extends Command
   {
       
      public var ninjaSeq:int;
      
      public var ninjaInfo:NinjaInfo;
      
      public function RequestNinjaDetailInfoCommand(param1:int)
      {
         super();
         this.ninjaSeq = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.NINJA_STORAGE;
      }
   }
}
