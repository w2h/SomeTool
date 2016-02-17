package prewar.command
{
   import base.NarutoCommand;
   import ninja.model.data.NinjaInfo;
   import ninja.data.TeamForamtionInfo;
   import def.PluginDef;
   
   public class OpenPrewarCommand extends NarutoCommand
   {
       
      public var pkgNinjas:Vector.<NinjaInfo>;
      
      public var npcTeamFormationList:Vector.<TeamForamtionInfo>;
      
      public var playerTeamForamtionList:Vector.<TeamForamtionInfo>;
      
      public var backgroundUrl:String;
      
      public var talentPage:int;
      
      public var readyTeamPosList:Array;
      
      public var selfTeamPos:int;
      
      public var mp:int;
      
      public var isControl:Boolean;
      
      public var elapseTime:int;
      
      public var canStandList:Array;
      
      public function OpenPrewarCommand(param1:int, param2:String, param3:int, param4:int, param5:Array, param6:Vector.<NinjaInfo>, param7:Vector.<TeamForamtionInfo>, param8:Vector.<TeamForamtionInfo>, param9:Boolean, param10:int, param11:Array)
      {
         super();
         this.mp = param1;
         this.pkgNinjas = param6;
         this.selfTeamPos = param4;
         this.talentPage = param3;
         this.backgroundUrl = param2;
         this.readyTeamPosList = param5;
         this.npcTeamFormationList = param7;
         this.playerTeamForamtionList = param8;
         this.isControl = param9;
         this.elapseTime = param10;
         this.canStandList = param11;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.PREWAR;
      }
   }
}
