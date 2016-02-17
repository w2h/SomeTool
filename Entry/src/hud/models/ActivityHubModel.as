package hud.models
{
   import com.tencent.morefun.naruto.model.BaseModel;
   import hud.data.ActivityHubLiteItemData;
   import hud.data.ActivityHubItemData;
   import com.tencent.morefun.naruto.model.event.ModelEvent;
   import hud.data.ActivityHubConfig;
   import serverProto.activityHub.ProtoActivityStatus;
   import cfgData.dataStruct.ActivityHubCFG;
   import def.ModelDef;
   
   public class ActivityHubModel extends BaseModel
   {
      
      public static const KEY_DATA:String = "keyData";
      
      public static const KEY_CURR_ITEM_INFO:String = "keyCurrItemInfo";
      
      public static const KEY_ITEM_DATAS:String = "keyItemDatas";
       
      public var liteItemDatas:Vector.<ActivityHubLiteItemData>;
      
      public var itemDatas:Vector.<ActivityHubItemData>;
      
      public var currItemId:int = -2;
      
      public var currItemDesc:String = "";
      
      public var currItemEnabled:Boolean = false;
      
      public function ActivityHubModel()
      {
         this.liteItemDatas = new Vector.<ActivityHubLiteItemData>();
         this.itemDatas = new Vector.<ActivityHubItemData>();
         super(ModelDef.ACTIVITY_HUB);
      }
      
      public function setLiteItemDatas(param1:Vector.<ActivityHubLiteItemData>) : void
      {
         this.liteItemDatas = param1;
         this.liteItemDatas.sort(this.sortFun);
         dispModelEvent(ModelEvent.UPDATE,KEY_DATA);
      }
      
      public function setLiteItemData(param1:int, param2:ActivityHubLiteItemData) : void
      {
         this.removeLiteItemData(param1,false);
         this.liteItemDatas.push(param2);
         this.liteItemDatas.sort(this.sortFun);
         dispModelEvent(ModelEvent.UPDATE,KEY_DATA);
      }
      
      public function setItemDatas(param1:Vector.<ActivityHubItemData>) : void
      {
         this.itemDatas = param1;
         dispModelEvent(ModelEvent.UPDATE,KEY_ITEM_DATAS);
      }
      
      private function sortFun(param1:ActivityHubLiteItemData, param2:ActivityHubLiteItemData) : int
      {
         return ActivityHubConfig.instance.getLiteCfg(param1.id).sort - ActivityHubConfig.instance.getLiteCfg(param2.id).sort;
      }
      
      public function removeLiteItemData(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:int = this.liteItemDatas.length - 1;
         while(_loc4_ >= 0)
         {
            if(this.liteItemDatas[_loc4_].id == param1)
            {
               this.liteItemDatas.splice(_loc4_,1);
               _loc3_ = true;
            }
            _loc4_--;
         }
         if(_loc3_ && param2)
         {
            dispModelEvent(ModelEvent.UPDATE,KEY_DATA);
         }
      }
      
      public function setCurrItemInfo(param1:int, param2:String, param3:Boolean) : void
      {
         this.currItemId = param1;
         this.currItemDesc = param2;
         this.currItemEnabled = param3;
         dispModelEvent(ModelEvent.UPDATE,KEY_CURR_ITEM_INFO);
      }
      
      public function isDoing(param1:int) : Boolean
      {
         var _loc2_:ActivityHubItemData = null;
         for each(_loc2_ in this.itemDatas)
         {
            if(_loc2_.id == param1 && _loc2_.status == ProtoActivityStatus.PROTO_ACTIVITY_STATUS_OPENING)
            {
               return true;
            }
         }
         return false;
      }
      
      public function isDoingByActivityId(param1:int) : Boolean
      {
         var _loc2_:ActivityHubCFG = null;
         for each(_loc2_ in ActivityHubConfig.instance.getCfgByActivityId(param1))
         {
            if(this.isDoing(_loc2_.id))
            {
               return true;
            }
         }
         return false;
      }
   }
}
