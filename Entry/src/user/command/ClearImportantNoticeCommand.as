package user.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class ClearImportantNoticeCommand extends Command
   {
       
      public var types:Vector.<uint>;
      
      public function ClearImportantNoticeCommand(param1:uint, ... rest)
      {
         super();
         var _loc3_:Array = [param1].concat(rest);
         this.types = Vector.<uint>(_loc3_);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.USER;
      }
   }
}
