package team.data
{
   import flash.events.EventDispatcher;
   import serverProto.inc.ProtoDiamondInfo;
   import team.data.event.TeamMemberDataEvent;
   import user.data.UserInfo;
   
   [Event(name="updateFormationNinjas",type="team.data.event.TeamMemberDataEvent")]
   [Event(name="updateIndex",type="team.data.event.TeamMemberDataEvent")]
   public class TeamMemberData extends EventDispatcher
   {
      
      public static const STATE_NORMAL:int = 1;
      
      public static const STATE_AFK:int = 2;
      
      public static const STATE_OFFLINE:int = 3;
       
      public var uin:uint;
      
      public var roleId:uint;
      
      public var svrId:uint;
      
      public var isCaptain:Boolean;
      
      public var majorNinja:uint;
      
      public var showNinja:uint;
      
      private var _index:int;
      
      public var state:int = 1;
      
      public var name:String;
      
      public var level:int;
      
      public var hp:int;
      
      public var maxHp:int;
      
      public var vipLevel:int;
      
      public var diamondInfo:ProtoDiamondInfo;
      
      public var otherNinjas:Vector.<uint>;
      
      private var _formationNinjas:Vector.<team.data.TeamFormationNinja>;
      
      public function TeamMemberData()
      {
         super();
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function set index(param1:int) : void
      {
         var _loc2_:* = 0;
         var _loc3_:TeamMemberDataEvent = null;
         _loc2_ = param1;
         this._index = _loc2_;
         _loc3_ = new TeamMemberDataEvent(TeamMemberDataEvent.UPDATE_INDEX);
         _loc3_.oldIndex = _loc2_;
         _loc3_.newIndex = this._index;
         this.dispatchEvent(_loc3_);
      }
      
      public function set formationNinjas(param1:Vector.<team.data.TeamFormationNinja>) : void
      {
         this._formationNinjas = param1;
         this.dispatchEvent(new TeamMemberDataEvent(TeamMemberDataEvent.UPDATE_FORMATION_NINJAS));
      }
      
      public function get formationNinjas() : Vector.<team.data.TeamFormationNinja>
      {
         return this._formationNinjas;
      }
      
      public function equal(param1:uint, param2:uint, param3:uint) : Boolean
      {
         return this.uin == param1 && this.roleId == param2 && this.svrId == param3;
      }
      
      public function equal2(param1:TeamMemberData) : Boolean
      {
         return this.equal(param1.uin,param1.roleId,param1.svrId);
      }
      
      public function equal3(param1:UserInfo) : Boolean
      {
         return this.equal(param1.uin,param1.role,param1.svrId);
      }
      
      override public function toString() : String
      {
         return "TeamMemberData{" + "\r\t" + "uin:" + this.uin + "\r\t" + "roleId:" + this.roleId + "\r\t" + "svrId:" + this.svrId + "\r\t" + "majorNinja:" + this.majorNinja + "\r\t" + "showNinja:" + this.showNinja + "\r\t" + "otherNinjas" + this.otherNinjas.join(",") + "\r\t" + "name:" + this.name + "\r\t" + "isCaptain:" + this.isCaptain + "\r\t" + "index:" + this.index + "\r\t" + "state:" + this.state + "\r\t" + "level:" + this.level + "\r\t" + "hp:" + this.hp + "\r\t" + "maxHp:" + this.maxHp + "\r}";
      }
   }
}
