package npc.cfgs
{
   import cfgData.dataStruct.BattleNpcCFG;
   import flash.geom.Matrix;
   
   public class BattleNpcCfg extends BaseNpcCfg implements ITaskStateCheck
   {
       
      public var battleNpcType:int;
      
      public var level:int;
      
      public var sentence:Array;
      
      public var revive:Boolean;
      
      public var assignFight:int;
      
      public var eliteAssignFight:int;
      
      public var initiativeAttack:Boolean;
      
      public var attackRange:int;
      
      public var confirmbox:int;
      
      public var speed:int;
      
      public var attackSpeed:int;
      
      public var prewarConfirmation:String;
      
      private var _defaultShow:Boolean;
      
      private var _doingTaskShow:String;
      
      private var _doingTaskHide:String;
      
      private var _doneTaskShow:String;
      
      private var _doneTaskHide:String;
      
      private var _receiveAbleTaskShow:String;
      
      private var _receiveAbleTaskHide:String;
      
      public function BattleNpcCfg()
      {
         super();
      }
      
      override public function parse(param1:XML) : void
      {
         super.parse(param1);
         title = param1.@title;
         name = param1.@name;
         this.level = param1.@level;
         this.battleNpcType = param1.@battleNpcType;
         this.sentence = String(param1.@sentence).split("|");
         this.revive = int(param1.@deadOneTime) == 0;
         this.assignFight = param1.@assignFight;
         this.eliteAssignFight = param1.@eliteAssignFight;
         moveRate = param1.@moveRate;
         moveRange = param1.@moveRange;
         this.initiativeAttack = int(param1.@initiativeAttack) == 1;
         sightRange = param1.@sightRange;
         this.attackRange = param1.@attackRange;
         this.speed = param1.@speed;
         this.attackSpeed = param1.@attackSpeed;
         this.confirmbox = int(param1.@confirmbox);
         this.prewarConfirmation = param1.@prewarConfirmation;
         this._defaultShow = String(param1.@defaultShow) == "1";
         this._doingTaskShow = param1.@doingTaskShow;
         this._doingTaskHide = param1.@doingTaskHide;
         this._doneTaskShow = param1.@doneTaskShow;
         this._doneTaskHide = param1.@doneTaskHide;
         this._receiveAbleTaskShow = param1.@receiveAbleTaskShow;
         this._receiveAbleTaskHide = param1.@receiveAbleTaskHide;
      }
      
      public function parse2(param1:BattleNpcCFG) : void
      {
         roleId = param1.roleId;
         res = "assets/role/npc/scene/npcres/" + roleId + "_outdoor.swf";
         matrix = new Matrix();
         idleActionName = "idle_0";
         dialogueType = param1.dialogueType;
         dialogueRate = param1.dialogueRate;
         dialogPossibility = param1.dialogPossibility;
         subLayerIndex = 1;
         dialogTextList = [param1.dialogText1,param1.dialogText2,param1.dialogText3,param1.dialogText4,param1.dialogText5];
         title = param1.title;
         name = param1.name;
         this.level = param1.level;
         this.battleNpcType = param1.battleNpcType;
         this.revive = int(param1.deadOneTime) == 0;
         moveRate = param1.moveRate;
         moveRange = param1.moveRange;
         this.initiativeAttack = int(param1.initiativeAttack) == 1;
         sightRange = param1.sightRange;
         this.attackRange = param1.attackRange;
         this.speed = param1.speed;
         this.attackSpeed = param1.attackSpeed;
         this.confirmbox = int(param1.confirmbox);
         this.prewarConfirmation = param1.prewarConfirmation;
         this._defaultShow = param1.defaultShow == 1;
         this._doingTaskShow = param1.doingTaskShow;
         this._doingTaskHide = param1.doingTaskHide;
         this._doneTaskShow = param1.doneTaskShow;
         this._doneTaskHide = param1.doneTaskHide;
         this._receiveAbleTaskShow = param1.receiveAbleTaskShow;
         this._receiveAbleTaskHide = param1.receiveAbleTaskHide;
      }
      
      public function get defaultShow() : Boolean
      {
         return this._defaultShow;
      }
      
      public function get doingTaskShow() : String
      {
         return this._doingTaskShow;
      }
      
      public function get doingTaskHide() : String
      {
         return this._doingTaskHide;
      }
      
      public function get doneTaskShow() : String
      {
         return this._doneTaskShow;
      }
      
      public function get doneTaskHide() : String
      {
         return this._doneTaskHide;
      }
      
      public function get receiveAbleTaskShow() : String
      {
         return this._receiveAbleTaskShow;
      }
      
      public function get receiveAbleTaskHide() : String
      {
         return this._receiveAbleTaskHide;
      }
   }
}
