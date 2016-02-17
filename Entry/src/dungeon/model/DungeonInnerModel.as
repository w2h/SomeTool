package dungeon.model
{
   import flash.events.EventDispatcher;
   import dungeon.data.DungeonInfo;
   import dungeon.data.DungeonChapterInfo;
   import flash.utils.Dictionary;
   import dungeon.event.DungeonEvent;
   import cfgData.CFGDataLibs;
   import cfgData.CFGDataEnum;
   import cfgData.dataStruct.DungeonGroupInfoCFG;
   import base.ApplicationData;
   
   [Event(name="currentDungeonChange",type="dungeon.event.DungeonEvent")]
   [Event(name="change",type="dungeon.event.DungeonEvent")]
   public class DungeonInnerModel extends EventDispatcher
   {
       
      private var _type:uint;
      
      private var _dungeons:Vector.<DungeonInfo>;
      
      private var _chapters:Vector.<DungeonChapterInfo>;
      
      private var _model:dungeon.model.DungeonModel;
      
      private var _chapterMap:Dictionary;
      
      private var _map:Dictionary;
      
      private var _currentDungeon:uint;
      
      private var _orderUnlcok:Boolean;
      
      public function DungeonInnerModel(param1:uint, param2:dungeon.model.DungeonModel)
      {
         super();
         this._type = param1;
         this._model = param2;
         this._dungeons = new Vector.<DungeonInfo>();
         this._map = new Dictionary(false);
         this._chapters = new Vector.<DungeonChapterInfo>();
         this._chapterMap = new Dictionary(false);
      }
      
      public function importDungeonInfos(param1:Vector.<DungeonInfo>, param2:Boolean = true) : void
      {
         var _loc3_:DungeonInfo = null;
         if(param2)
         {
            this._dungeons = new Vector.<DungeonInfo>();
            this._map = new Dictionary(false);
         }
         var _loc4_:Dictionary = new Dictionary(true);
         var _loc5_:int = 0;
         while(_loc5_ < this._dungeons.length)
         {
            _loc3_ = this._dungeons[_loc5_];
            _loc4_[_loc3_.id] = _loc5_;
            _loc5_++;
         }
         for each(_loc3_ in param1)
         {
            if(_loc3_)
            {
               _loc3_.showGuideIndicator = _loc3_.id == this._currentDungeon;
               if(!this._map[_loc3_.id])
               {
                  _loc4_[_loc3_.id] = this._dungeons.length;
                  this._dungeons.push(_loc3_);
               }
               else if(this._map[_loc3_.id] != _loc3_)
               {
                  if(_loc4_[_loc3_.id] != null)
                  {
                     this._dungeons.splice(_loc4_[_loc3_.id],1,_loc3_);
                  }
                  else
                  {
                     throw new ArgumentError("副本#" + _loc3_.id + "管理失败");
                  }
               }
               this._map[_loc3_.id] = _loc3_;
            }
         }
         this._dungeons.sort(this.sortDungeons);
         _loc5_ = 0;
         while(_loc5_ < this._dungeons.length)
         {
            if(_loc5_ < this._dungeons.length - 1)
            {
               this._dungeons[_loc5_].next = this._dungeons[_loc5_ + 1];
            }
            else
            {
               this._dungeons[_loc5_].next = null;
            }
            if(_loc5_ > 0)
            {
               this._dungeons[_loc5_].prev = this._dungeons[_loc5_ - 1];
            }
            else
            {
               this._dungeons[_loc5_].prev = null;
            }
            _loc5_++;
         }
         this.refreshChapters();
         this.refreshUnlockStatus();
         dispatchEvent(new DungeonEvent(DungeonEvent.CHANGE,this._dungeons));
      }
      
      public function refreshUnlockStatus() : void
      {
         var _loc1_:* = 0;
         if(!this._orderUnlcok)
         {
            return;
         }
         if(!this._dungeons || !this._dungeons.length)
         {
            return;
         }
         this._dungeons[0].unlocked = true;
         _loc1_ = 1;
         while(_loc1_ < this._dungeons.length)
         {
            this._dungeons[_loc1_].unlocked = false;
            _loc1_++;
         }
         _loc1_ = 1;
         while(_loc1_ < this._dungeons.length)
         {
            if(this._dungeons[_loc1_ - 1].bestEvaluate > 0)
            {
               this._dungeons[_loc1_].unlocked = true;
               _loc1_++;
               continue;
            }
            break;
         }
      }
      
      public function resetHighlightFlags() : void
      {
         var _loc1_:DungeonInfo = null;
         for each(_loc1_ in this._dungeons)
         {
            _loc1_.highlight = false;
         }
      }
      
      private function refreshChapters() : void
      {
         var _loc2_:DungeonChapterInfo = null;
         var _loc3_:uint = 0;
         var _loc4_:DungeonInfo = null;
         var _loc1_:Dictionary = this._chapterMap;
         this._chapters = new Vector.<DungeonChapterInfo>();
         this._chapterMap = new Dictionary(false);
         for each(_loc2_ in _loc1_)
         {
            _loc2_.dungeons.length = 0;
         }
         for each(_loc4_ in this._dungeons)
         {
            _loc3_ = _loc4_.cfg.groupId;
            if(_loc1_[_loc3_])
            {
               this._chapterMap[_loc3_] = _loc1_[_loc3_];
            }
            if(!this._chapterMap[_loc3_])
            {
               _loc2_ = new DungeonChapterInfo();
               _loc2_.dungeonCount = this._model.getChapterDungeonCount(_loc4_.cfg);
               _loc2_.id = _loc3_;
               _loc2_.dungeons = new Vector.<DungeonInfo>();
               _loc2_.cfg = CFGDataLibs.getRowData(CFGDataEnum.ENUM_DungeonGroupInfoCFG,_loc2_.id) as DungeonGroupInfoCFG;
               if(_loc2_.cfg && _loc2_.cfg.name)
               {
                  _loc2_.name = _loc2_.cfg.name;
                  this._chapterMap[_loc2_.id] = _loc2_;
               }
               else
               {
                  throw new Error("副本" + _loc4_.id + "/" + _loc4_.cfg.name + "所属章节未配置：" + _loc2_.id);
               }
            }
            _loc2_ = this._chapterMap[_loc3_] as DungeonChapterInfo;
            _loc2_.dungeons.push(_loc4_);
         }
         for each(_loc2_ in this._chapterMap)
         {
            _loc2_.dungeons.sort(this.sortDungeons);
            _loc2_.qualified = ApplicationData.singleton.selfInfo.level >= _loc2_.cfg.levelUnlock;
            this._chapters.push(_loc2_);
         }
         this._chapters.sort(this.sortChapters);
      }
      
      private function sortChapters(param1:DungeonChapterInfo, param2:DungeonChapterInfo) : int
      {
         if(param1.cfg.levelUnlock != param2.cfg.levelUnlock)
         {
            return param1.cfg.levelUnlock > param2.cfg.levelUnlock?-1:1;
         }
         return param1.id > param2.id?-1:1;
      }
      
      private function sortDungeons(param1:DungeonInfo, param2:DungeonInfo) : int
      {
         if(param1.cfg.groupId != param2.cfg.groupId)
         {
            return param1.cfg.groupId > param2.cfg.groupId?1:-1;
         }
         if(param1.openLevel != param2.openLevel)
         {
            return param1.openLevel > param2.openLevel?1:-1;
         }
         return param1.cfg.groupSeqNum > param2.cfg.groupSeqNum?1:-1;
      }
      
      public function updateDungeonInfo(param1:DungeonInfo) : void
      {
         var _loc2_:* = 0;
         if(!param1)
         {
            return;
         }
         param1.showGuideIndicator = param1.id == this._currentDungeon;
         if(!this._map[param1.id])
         {
            this._dungeons.push(param1);
         }
         else if(this._map[param1.id] != param1)
         {
            _loc2_ = this._dungeons.indexOf(this._map[param1.id]);
            if(_loc2_ >= 0)
            {
               this._dungeons.splice(_loc2_,1,param1);
            }
            else
            {
               throw new ArgumentError("副本#" + param1.id + "管理失败");
            }
         }
         this._map[param1.id] = param1;
         this.refreshChapters();
         dispatchEvent(new DungeonEvent(DungeonEvent.CHANGE,this._dungeons.concat()));
      }
      
      public function getDungeonInfo(param1:uint) : DungeonInfo
      {
         return this._map[param1] as DungeonInfo;
      }
      
      public function getChapterInfo(param1:uint) : DungeonChapterInfo
      {
         return this._chapterMap[param1] as DungeonChapterInfo;
      }
      
      public function get type() : uint
      {
         return this._type;
      }
      
      public function get dungeons() : Vector.<DungeonInfo>
      {
         return this._dungeons.concat();
      }
      
      public function get chapters() : Vector.<DungeonChapterInfo>
      {
         return this._chapters.concat();
      }
      
      public function get currentDungeon() : uint
      {
         return this._currentDungeon;
      }
      
      public function set currentDungeon(param1:uint) : void
      {
         var _loc2_:DungeonInfo = null;
         this._currentDungeon = param1;
         for each(_loc2_ in this._dungeons)
         {
            _loc2_.showGuideIndicator == _loc2_.id == this._currentDungeon;
         }
         dispatchEvent(new DungeonEvent(DungeonEvent.CURRENT_DUNGEON_CHANGE,this._currentDungeon));
      }
      
      public function get orderUnlock() : Boolean
      {
         return this._orderUnlcok;
      }
      
      public function set orderUnlock(param1:Boolean) : void
      {
         this._orderUnlcok = param1;
      }
   }
}
