package rank.model
{
   import com.tencent.morefun.naruto.model.BaseModel;
   import flash.utils.Dictionary;
   import rank.model.data.RankTitleCfgInfo;
   import flash.events.Event;
   import def.ModelDef;
   
   [Event(name="change",type="flash.events.Event")]
   public class TitleModel extends BaseModel
   {
       
      private var _titleCfgs:Dictionary;
      
      private var _userTitles:Vector.<RankTitleCfgInfo>;
      
      private var _chosenTitle:RankTitleCfgInfo;
      
      private var _unownedTitles:Vector.<RankTitleCfgInfo>;
      
      public function TitleModel()
      {
         super(ModelDef.TITLE);
      }
      
      public function importRankTitleConfig(param1:XML) : void
      {
         var _loc4_:RankTitleCfgInfo = null;
         var _loc5_:XML = null;
         var _loc6_:Array = null;
         var _loc7_:* = undefined;
         var _loc8_:* = 0;
         var _loc9_:uint = 0;
         var _loc2_:Dictionary = new Dictionary(false);
         var _loc3_:Dictionary = new Dictionary(true);
         for each(_loc5_ in param1.title)
         {
            _loc4_ = new RankTitleCfgInfo();
            _loc4_.id = parseInt(_loc5_.@id);
            _loc4_.name = _loc5_.@name;
            _loc4_.rank = parseInt(_loc5_.@rank);
            _loc4_.rarity = parseInt(_loc5_.@rarity);
            _loc4_.obtainTips = _loc5_.@obtainTips;
            _loc4_.expireTips = _loc5_.@expireTips;
            _loc4_.hasImage = parseInt(_loc5_.@hasImage) != 0;
            if(_loc4_.hasImage)
            {
               _loc4_.image = "assets/rank/title/" + _loc4_.id + ".png";
            }
            _loc2_[_loc4_.id] = _loc4_;
            if(!_loc3_[_loc4_.rank])
            {
               _loc3_[_loc4_.rank] = [];
            }
            _loc3_[_loc4_.rank].push(_loc4_);
         }
         this._titleCfgs = _loc2_;
         this._titleCfgs[0] = new RankTitleCfgInfo();
         _loc6_ = [16759296,11822079,1815028];
         for(_loc7_ in _loc3_)
         {
            (_loc3_[_loc7_] as Array).sortOn("id",Array.NUMERIC);
            _loc8_ = 0;
            _loc9_ = _loc3_[_loc7_].length;
            while(_loc8_ < _loc9_)
            {
               (_loc3_[_loc7_][_loc8_] as RankTitleCfgInfo).color = _loc6_[_loc8_];
               _loc8_++;
            }
         }
      }
      
      public function updateUserTitles(param1:Vector.<uint>, param2:uint) : void
      {
         var _loc3_:RankTitleCfgInfo = null;
         var _loc4_:uint = 0;
         this._userTitles = new Vector.<RankTitleCfgInfo>();
         for each(_loc4_ in param1)
         {
            _loc3_ = this.getTitle(_loc4_);
            _loc3_.owned = true;
            this._userTitles.push(_loc3_);
         }
         this.setChosenTitle(param2);
      }
      
      public function updateUnownedTitles(param1:Vector.<uint>) : void
      {
         var _loc2_:RankTitleCfgInfo = null;
         var _loc3_:uint = 0;
         this._unownedTitles = new Vector.<RankTitleCfgInfo>();
         for each(_loc3_ in param1)
         {
            _loc2_ = this.getTitle(_loc3_);
            _loc2_.owned = false;
            this._unownedTitles.push(_loc2_);
         }
      }
      
      public function setChosenTitle(param1:uint) : void
      {
         this._chosenTitle = this.getTitle(param1);
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function getTitle(param1:uint) : RankTitleCfgInfo
      {
         return this._titleCfgs[param1] as RankTitleCfgInfo;
      }
      
      public function get userTitles() : Vector.<RankTitleCfgInfo>
      {
         return this._userTitles;
      }
      
      public function get chosenTitle() : RankTitleCfgInfo
      {
         return this._chosenTitle;
      }
      
      public function get unownedTitles() : Vector.<RankTitleCfgInfo>
      {
         return this._unownedTitles;
      }
   }
}
