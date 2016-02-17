package team.cmd
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class UpdateTeamMemberPosCommand extends NarutoCommand
   {
       
      public var srcPos:int;
      
      public var destPos:int;
      
      public function UpdateTeamMemberPosCommand(param1:int, param2:int)
      {
         super();
         this.srcPos = param1;
         this.destPos = param2;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.TEAM;
      }
   }
}
