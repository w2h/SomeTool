package guildRedPackage
{
   import com.tencent.morefun.naruto.model.BaseModel;
   import com.tencent.morefun.naruto.model.event.ModelEvent;
   import def.ModelDef;
   
   public class GuildRedPackageModel extends BaseModel
   {
      
      public static const DATA_CHANGE_EVENT:String = "dataChgEvt";
       
      private var m_redpackgeCommand:guildRedPackage.GuildRedPackageCommand;
      
      public function GuildRedPackageModel(param1:String)
      {
         super(ModelDef.GUILD_RED_PACKAGE);
      }
      
      public function set redpackgeCommand(param1:guildRedPackage.GuildRedPackageCommand) : void
      {
         this.m_redpackgeCommand = param1;
         dispModelEvent(ModelEvent.UPDATE,DATA_CHANGE_EVENT);
      }
      
      public function get redpackgeCommand() : guildRedPackage.GuildRedPackageCommand
      {
         return this.m_redpackgeCommand;
      }
   }
}
