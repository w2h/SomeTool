package ui.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class ShowItemIconBoxCommand extends Command
   {
       
      public var text:String;
      
      public var flags:uint;
      
      public var modal:Boolean;
      
      public var data:Object;
      
      public var closedFun:Function;
      
      public var closingFun:Function;
      
      public var flagNames:Object;
      
      public var m_isSystemError:Boolean = false;
      
      public var floatItemAnimation:Boolean;
      
      public var width:int;
      
      public function ShowItemIconBoxCommand(param1:String, param2:uint = 1, param3:Object = null, param4:Boolean = false, param5:Boolean = true, param6:Function = null, param7:Function = null, param8:Object = null, param9:Boolean = false)
      {
         super();
         this.floatItemAnimation = param4;
         this.m_isSystemError = param9;
         this.text = param1;
         this.flags = param2;
         this.modal = param5;
         this.data = param3;
         this.closedFun = param6;
         this.closingFun = param7;
         this.flagNames = param8;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RSMODEL;
      }
   }
}
