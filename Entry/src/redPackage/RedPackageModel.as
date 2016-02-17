package redPackage
{
   import com.tencent.morefun.naruto.model.BaseModel;
   import com.tencent.morefun.naruto.model.event.ModelEvent;
   import def.ModelDef;
   
   public class RedPackageModel extends BaseModel
   {
      
      public static const DATA_CHANGE_EVENT:String = "dataChgEvt";
       
      private var m_redpackgeCommand:redPackage.RedPackageCommand;
      
      public function RedPackageModel(param1:String)
      {
         super(ModelDef.RED_PACKAGE);
      }
      
      public function set redpackgeCommand(param1:redPackage.RedPackageCommand) : void
      {
         this.m_redpackgeCommand = param1;
         dispModelEvent(ModelEvent.UPDATE,DATA_CHANGE_EVENT);
      }
      
      public function get redpackgeCommand() : redPackage.RedPackageCommand
      {
         return this.m_redpackgeCommand;
      }
   }
}
