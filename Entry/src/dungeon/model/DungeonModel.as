package dungeon.model
{
   import com.tencent.morefun.naruto.model.BaseModel;
   import flash.utils.Dictionary;
   import cfgData.dataStruct.DungeonInfoCFG;
   import cfgData.CFGDataLibs;
   import cfgData.CFGDataEnum;
   import dungeon.event.DungeonEvent;
   import dungeon.def.DungeonTypeDef;
   import dungeon.data.DungeonInfo;
   import def.ModelDef;
   
   [Event(name="treasureDungeonChange",type="dungeon.event.DungeonEvent")]
   [Event(name="foisonDungeonChange",type="dungeon.event.DungeonEvent")]
   [Event(name="passCountChange",type="dungeon.event.DungeonEvent")]
   [Event(name="plotDungeonChange",type="dungeon.event.DungeonEvent")]
   [Event(name="eliteDungeonChange",type="dungeon.event.DungeonEvent")]
   [Event(name="change",type="dungeon.event.DungeonEvent")]
   public class DungeonModel extends BaseModel
   {
       
      private var _models:Dictionary;
      
      private var _chapterCfgs:Dictionary;
      
      public var currDungeonId:int;
      
      public var currDungeonType:int;
      
      public function DungeonModel()
      {
         var _loc2_:DungeonInnerModel = null;
         var _loc3_:uint = 0;
         super(ModelDef.DUNGEON);
         this.initChapterCfgs();
         this._models = new Dictionary(false);
         var _loc1_:Vector.<uint> = new Vector.<uint>();
         _loc1_.push(DungeonTypeDef.TEAM);
         _loc1_.push(DungeonTypeDef.ELITE);
         _loc1_.push(DungeonTypeDef.NORMAL);
         _loc1_.push(DungeonTypeDef.FOISON);
         _loc1_.push(DungeonTypeDef.TREASURE);
         for each(_loc3_ in _loc1_)
         {
            _loc2_ = new DungeonInnerModel(_loc3_,this);
            _loc2_.addEventListener(DungeonEvent.CHANGE,this.modelChangeHandler);
            this._models[_loc3_] = _loc2_;
         }
         this.getInnerModel(DungeonTypeDef.ELITE).orderUnlock = true;
      }
      
      private function initChapterCfgs() : void
      {
         var _loc3_:String = null;
         var _loc4_:DungeonInfoCFG = null;
         var _loc1_:Dictionary = CFGDataLibs.getAllData(CFGDataEnum.ENUM_DungeonInfoCFG);
         var _loc2_:Dictionary = new Dictionary(false);
         for each(_loc4_ in _loc1_)
         {
            _loc3_ = _loc4_.type + "-" + _loc4_.groupId;
            if(!_loc2_[_loc3_])
            {
               _loc2_[_loc3_] = new Vector.<DungeonInfoCFG>();
            }
            _loc2_[_loc3_].push(_loc4_);
         }
         this._chapterCfgs = _loc2_;
      }
      
      private function modelChangeHandler(param1:DungeonEvent) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      function getChapterDungeonCount(param1:DungeonInfoCFG) : uint
      {
         return (this._chapterCfgs[param1.type + "-" + param1.groupId] as Vector.<DungeonInfoCFG>).length;
      }
      
      public function getInnerModel(param1:uint) : DungeonInnerModel
      {
         return this._models[param1] as DungeonInnerModel;
      }
      
      public function getDungeonInfo(param1:uint, param2:uint = 0) : DungeonInfo
      {
         var _loc3_:DungeonInfo = null;
         var _loc4_:* = undefined;
         if(param2 > 0)
         {
            return this.getInnerModel(param2).getDungeonInfo(param1);
         }
         for(_loc4_ in this._models)
         {
            _loc3_ = this.getInnerModel(_loc4_).getDungeonInfo(param1);
            if(_loc3_)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function getDungeonCfgInfo(param1:uint) : DungeonInfoCFG
      {
         return CFGDataLibs.getRowData(CFGDataEnum.ENUM_DungeonInfoCFG,param1) as DungeonInfoCFG;
      }
   }
}
