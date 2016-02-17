package dungeon.model
{
   import com.tencent.morefun.naruto.model.BaseModel;
   import com.tencent.morefun.naruto.model.event.ModelEvent;
   import def.ModelDef;
   
   public class TeamDungeonModel extends BaseModel
   {
      
      public static const KEY_TIME:String = "key_time";
      
      public static const KEY_INFOS:String = "key_infos";
      
      public static const KEY_REMAINS:String = "key_remains";
      
      public static const KEY_REMAINS_BY_FRAND:String = "key_remains_by_frand";
      
      public static const KEY_MATCH_TIME:String = "key_match_time";
       
      private var _remains:int;
      
      private var _remainsByFrand:int;
      
      private var _matchTime:uint;
      
      public var infos:Array;
      
      public function TeamDungeonModel()
      {
         super(ModelDef.DUNGEON_TEAM);
      }
      
      public function get matchTime() : uint
      {
         return this._matchTime;
      }
      
      public function set matchTime(param1:uint) : void
      {
         this._matchTime = param1;
         dispModelEvent(ModelEvent.UPDATE,KEY_MATCH_TIME);
      }
      
      public function get remains() : int
      {
         return this._remains;
      }
      
      public function set remains(param1:int) : void
      {
         this._remains = param1;
         dispModelEvent(ModelEvent.UPDATE,KEY_REMAINS);
      }
      
      public function get remainsByFrand() : int
      {
         return this._remainsByFrand;
      }
      
      public function set remainsByFrand(param1:int) : void
      {
         this._remainsByFrand = param1;
         dispModelEvent(ModelEvent.UPDATE,KEY_REMAINS_BY_FRAND);
      }
      
      public function setInfos(param1:Array) : void
      {
         this.infos = param1.sortOn("id",Array.NUMERIC | Array.DESCENDING);
         dispModelEvent(ModelEvent.UPDATE,KEY_INFOS);
      }
   }
}
