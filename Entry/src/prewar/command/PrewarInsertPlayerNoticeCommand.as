package prewar.command
{
   import base.NarutoCommand;
   import ninja.data.TeamForamtionInfo;
   import def.PluginDef;
   
   public class PrewarInsertPlayerNoticeCommand extends NarutoCommand
   {
       
      public var canStandList:Array;
      
      public var teamFormationInfo:TeamForamtionInfo;
      
      public function PrewarInsertPlayerNoticeCommand(param1:Array, param2:TeamForamtionInfo)
      {
         super();
         this.canStandList = param1;
         this.teamFormationInfo = param2;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.PREWAR;
      }
   }
}
