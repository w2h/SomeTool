package chat.command
{
   import com.tencent.morefun.framework.base.Command;
   import flash.geom.Point;
   import def.PluginDef;
   
   public class ChangeChatViewLayerCommand extends Command
   {
       
      public var layerName:String;
      
      public var location:int;
      
      public var offset:Point;
      
      public var calcWH:Boolean;
      
      public function ChangeChatViewLayerCommand(param1:String, param2:int, param3:Point = null, param4:Boolean = true)
      {
         super();
         this.layerName = param1;
         this.location = param2;
         this.offset = param3;
         this.calcWH = param4;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.CHAT;
      }
   }
}
