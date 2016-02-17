package RSModel.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class PaymentConfirmBoxCommand extends Command
   {
       
      public var m_cash:uint;
      
      public var m_noticeMsg:String;
      
      public var m_payType:int;
      
      public var m_color:Boolean;
      
      public var m_postData;
      
      public function PaymentConfirmBoxCommand(param1:uint, param2:String, param3:int = 0, param4:Boolean = true, param5:* = null)
      {
         this.m_cash = param1;
         this.m_noticeMsg = param2;
         this.m_payType = param3;
         this.m_color = param4;
         this.m_postData = param5;
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RSMODEL;
      }
   }
}
