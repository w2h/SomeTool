package npc.cfgs
{
   public class TaskNpcCfg extends BaseNpcCfg implements ITaskStateCheck
   {
       
      public var sentence:Array;
      
      private var _defaultShow:Boolean;
      
      private var _doingTaskShow:String;
      
      private var _doingTaskHide:String;
      
      private var _doneTaskShow:String;
      
      private var _doneTaskHide:String;
      
      private var _receiveAbleTaskShow:String;
      
      private var _receiveAbleTaskHide:String;
      
      public var dialogNpcId:int;
      
      public var entryEffectType:int;
      
      public var leaveEffectType:int;
      
      public var menus:Array;
      
      public var menuParams:Array;
      
      public var functionIcon:int;
      
      public var miniMapType:int;
      
      public var autoCloseDialogDistance:int = 300;
      
      public function TaskNpcCfg()
      {
         super();
      }
      
      override public function parse(param1:XML) : void
      {
         super.parse(param1);
         listId = param1.@listId;
         this.dialogNpcId = param1.@dialogNpcId;
         title = param1.@title;
         name = param1.@name;
         this.sentence = String(param1.@sentence).split("|");
         this._defaultShow = String(param1.@defaultShow) == "1";
         this._doingTaskShow = param1.@doingTaskShow;
         this._doingTaskHide = param1.@doingTaskHide;
         this._doneTaskShow = param1.@doneTaskShow;
         this._doneTaskHide = param1.@doneTaskHide;
         this._receiveAbleTaskShow = param1.@receiveAbleTaskShow;
         this._receiveAbleTaskHide = param1.@receiveAbleTaskHide;
         this.menus = [String(param1.@menu1),String(param1.@menu2),String(param1.@menu3)];
         this.menuParams = [String(param1.@menuParam1),String(param1.@menuParam2),String(param1.@menuParam3)];
         this.functionIcon = param1.@functionIcon;
         this.miniMapType = int(param1.@miniMapType);
         this.entryEffectType = param1.@entryEffectType;
         this.leaveEffectType = param1.@leaveEffectType;
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
