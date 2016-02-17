package equipment.utils
{
   import RSModel.IRSModelPlugin;
   import com.tencent.morefun.framework.apf.core.facade.Facade;
   import def.PluginDef;
   import equipment.model.EquipmentModel;
   import com.tencent.morefun.framework.apf.core.plugin.Plugin;
   import def.ModelDef;
   import bag.model.BagModel;
   import user.model.UserModel;
   import bag.data.EquipmentItemData;
   import bag.utils.BagUtils;
   import serverProto.inc.ProtoItemInfo;
   import bag.data.ItemData;
   import serverProto.stone.ProtoStoneActivityNotify;
   import utils.PlayerNameUtil;
   
   public class EquipmentUtils
   {
      
      public static const MIN_LEVEL:int = 1;
      
      public static const VAL_LABELS:Array = ["生命","攻击","防御","忍术","抗性"];
      
      public static const FORGE_VAL_LABELS:Array = ["先攻","暴击","暴伤","连击","控制"];
      
      public static const FORGE_QUALITY_PERCENTS:Array = [1,21,41,61,81];
      
      public static const FORGE_QUALITY_COLORS:Array = [16777215,52784,1815028,11822079,16759296];
      
      public static const FORGE_MAX_LEVEL:int = 10;
      
      public static const FORGE_PROP_OPEN_LEVEL:int = 40;
      
      public static const FUMO_OPEN_LEVEL:int = 65;
      
      public static const FUMO_OPEN:Boolean = true;
      
      public static const FORGE_QUALITY_OPEN_LEVEL:int = 45;
      
      public static const STONE_OPEN_LEVEL:int = 48;
      
      public static const VALUE_TYPE_NUM:int = 5;
      
      public static const SCROLL_ITEM_ID:uint = 10600005;
       
      public function EquipmentUtils()
      {
         super();
         throw new Error(EquipmentUtils + " can not be instantiated.");
      }
      
      public static function get plugin() : IRSModelPlugin
      {
         return Facade.getInstance().retrievePlugin(PluginDef.RSMODEL) as IRSModelPlugin;
      }
      
      public static function get model() : EquipmentModel
      {
         return (plugin as Plugin).retrieveModel(ModelDef.EQUIPMENT) as EquipmentModel;
      }
      
      public static function get bagModel() : BagModel
      {
         return (plugin as Plugin).retrieveModel(ModelDef.BAG) as BagModel;
      }
      
      public static function get userModel() : UserModel
      {
         return (plugin as Plugin).retrieveModel(ModelDef.USER) as UserModel;
      }
      
      public static function calcValue(param1:EquipmentItemData) : int
      {
         if(param1 == null)
         {
            return 0;
         }
         var _loc2_:int = BagUtils.calcEquipmentType(param1.id);
         if(_loc2_ > 0)
         {
            return param1["val" + _loc2_];
         }
         return 0;
      }
      
      public static function calcUpgradeValue(param1:EquipmentItemData) : int
      {
         if(param1 == null)
         {
            return 0;
         }
         var _loc2_:int = BagUtils.calcEquipmentType(param1.id);
         if(_loc2_ > 0)
         {
            return param1["upgradeVal" + _loc2_];
         }
         return 0;
      }
      
      public static function getScrollNum() : int
      {
         return BagUtils.model.getTotalItemNumById(SCROLL_ITEM_ID);
      }
      
      public static function getForgeQualityColor(param1:int) : uint
      {
         var _loc2_:int = 0;
         if(param1 < EquipmentUtils.FORGE_QUALITY_PERCENTS[1])
         {
            _loc2_ = 0;
         }
         else if(param1 < EquipmentUtils.FORGE_QUALITY_PERCENTS[2])
         {
            _loc2_ = 1;
         }
         else if(param1 < EquipmentUtils.FORGE_QUALITY_PERCENTS[3])
         {
            _loc2_ = 2;
         }
         else if(param1 < EquipmentUtils.FORGE_QUALITY_PERCENTS[4])
         {
            _loc2_ = 3;
         }
         else
         {
            _loc2_ = 4;
         }
         return EquipmentUtils.FORGE_QUALITY_COLORS[_loc2_];
      }
      
      public static function parseMyNarutoStoneLog(param1:Vector.<ProtoItemInfo>) : void
      {
         var _loc3_:ProtoItemInfo = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:ItemData = null;
         var _loc2_:Object = {};
         for each(_loc3_ in param1)
         {
            if(_loc2_[_loc3_.id])
            {
               _loc2_[_loc3_.id] = _loc2_[_loc3_.id] + _loc3_.num;
            }
            else
            {
               _loc2_[_loc3_.id] = _loc3_.num;
            }
         }
         _loc4_ = "<font color=\'#9e905c\'>获得 </font>";
         for(_loc5_ in _loc2_)
         {
            _loc6_ = BagUtils.createItemData(uint(_loc5_),_loc2_[_loc5_]);
            _loc4_ = _loc4_ + ("<font color=\'#" + _loc6_.color.toString(16) + "\'>" + _loc6_.name + " x " + _loc6_.num + "</font><font color=\'#9e905c\'>，</font>\n");
         }
         _loc4_ = _loc4_.substring(0,_loc4_.length - String("<font color=\'#9e905c\'>，</font>\n").length);
         model.updateMyNarutoStoneLog(_loc4_);
      }
      
      public static function parseSvrNarutoStoneLog(param1:ProtoStoneActivityNotify) : void
      {
         var _loc2_:String = "<font color=\'#ffae00\'>" + PlayerNameUtil.standardlizeName(param1.playerKey,param1.userName) + "</font><font color=\'#9e905c\'> 获得 </font>";
         var _loc3_:ItemData = BagUtils.createItemData(param1.itemId,1);
         _loc2_ = _loc2_ + ("<font color=\'#" + _loc3_.color.toString(16) + "\'>" + _loc3_.name + "</font>");
         model.updateSvrNarutoStoneLog(_loc2_);
      }
      
      public static function clearSvrNarutoStoneLog() : void
      {
         model.clearSvrNarutoStoneLog();
      }
   }
}
