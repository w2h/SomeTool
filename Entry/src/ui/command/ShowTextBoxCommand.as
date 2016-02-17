package ui.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class ShowTextBoxCommand extends Command
   {
       
      public var text:String;
      
      public var flags:uint;
      
      public var modal:Boolean;
      
      public var data:Object;
      
      public var closedFun:Function;
      
      public var closingFun:Function;
      
      public var flagNames:Object;
      
      public var m_isSystemError:Boolean = false;
      
      public function ShowTextBoxCommand(param1:String, param2:uint = 1, param3:Boolean = true, param4:Object = null, param5:Function = null, param6:Function = null, param7:Object = null, param8:Boolean = false)
      {
         super();
         this.m_isSystemError = param8;
         this.text = param1;
         this.flags = param2;
         this.modal = param3;
         this.data = param4;
         this.closedFun = param5;
         this.closingFun = param6;
         this.flagNames = param7;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RSMODEL;
      }
   }
}
