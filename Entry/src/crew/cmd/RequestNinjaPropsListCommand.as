package crew.cmd
{
   import com.tencent.morefun.framework.base.Command;
   import crew.data.NinjaPropsInfo;
   import crew.data.NinjaPropsPositionInfo;
   import def.PluginDef;
   
   public class RequestNinjaPropsListCommand extends Command
   {
       
      public var type:uint;
      
      public var props:Vector.<NinjaPropsInfo>;
      
      public var positions:Vector.<NinjaPropsPositionInfo>;
      
      public function RequestNinjaPropsListCommand(param1:uint)
      {
         super();
         this.type = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.CREW;
      }
   }
}
