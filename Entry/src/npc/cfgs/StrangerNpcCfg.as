package npc.cfgs
{
   public class StrangerNpcCfg extends BaseNpcCfg implements ITaskStateCheck
   {
       
      public var showName:Boolean;
      
      public var words:String;
      
      private var _defaultShow:Boolean;
      
      private var _doingTaskShow:String;
      
      private var _doingTaskHide:String;
      
      private var _doneTaskShow:String;
      
      private var _doneTaskHide:String;
      
      private var _receiveAbleTaskShow:String;
      
      private var _receiveAbleTaskHide:String;
      
      private var _delayShow:Boolean;
      
      public var entryEffectType:int;
      
      public var leaveEffectType:int;
      
      public function StrangerNpcCfg()
      {
         super();
      }
      
      override public function parse(param1:XML) : void
      {
         super.parse(param1);
         name = param1.@name;
         title = param1.@title;
         this.showName = int(param1.@showName) == 1;
         this.words = param1.@words;
         this._defaultShow = String(param1.@defaultShow) == "1";
         this._doingTaskShow = param1.@doingTaskShow;
         this._doingTaskHide = param1.@doingTaskHide;
         this._doneTaskShow = param1.@doneTaskShow;
         this._doneTaskHide = param1.@doneTaskHide;
         this._receiveAbleTaskShow = param1.@receiveAbleTaskShow;
         this._receiveAbleTaskHide = param1.@receiveAbleTaskHide;
         this._delayShow = String(param1.@delayShow) == "1";
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
      
      public function get delayShow() : Boolean
      {
         return this._delayShow;
      }
   }
}
