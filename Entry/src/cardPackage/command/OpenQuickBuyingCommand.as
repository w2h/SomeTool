package cardPackage.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenQuickBuyingCommand extends Command
   {
       
      public var itemId:uint;
      
      public var itemNum:int;
      
      public var label:String;
      
      public var flag:int;
      
      public var onSuccess:Function;
      
      public var onFailed:Function;
      
      public function OpenQuickBuyingCommand(param1:uint, param2:int = 1, param3:String = "", param4:Function = null, param5:Function = null)
      {
         super();
         this.itemId = param1;
         this.itemNum = param2;
         this.label = param3;
         this.onSuccess = param4;
         this.onFailed = param5;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RSMODEL;
      }
   }
}
