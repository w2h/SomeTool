package bag.utils
{
   import com.tencent.morefun.framework.apf.core.facade.Facade;
   import com.tencent.morefun.framework.apf.core.plugin.Plugin;
   import com.tencent.morefun.framework.loader.FileManager;
   import com.tencent.morefun.naruto.util.StrReplacer;
   
   import flash.errors.IllegalOperationError;
   
   import RSModel.IRSModelPlugin;
   
   import bag.BagConst;
   import bag.conf.BagItemConf;
   import bag.data.BeastFragmentData;
   import bag.data.BeastRuneData;
   import bag.data.CardItemData;
   import bag.data.CommonItemData;
   import bag.data.EquipmentItemData;
   import bag.data.GemItemData;
   import bag.data.ItemData;
   import bag.data.TreasureMapItemData;
   import bag.def.ItemTabs;
   import bag.model.BagModel;
   
   import base.ApplicationData;
   
   import crew.cmd.RequestNinjaPropsCfgCommand;
   import crew.data.NinjaPropsCfgInfo;
   import crew.model.NinjaPropsModel;
   
   import def.ModelDef;
   import def.PluginDef;
   
   import reward.cmd.GetRewardCfgCommand;
   
   public class BagUtils
   {
      
      public static const QUALITY_COLORS:Array = [16777215,52784,1815028,11822079,16759296,15415863];
      
      public static const PLAYER_FRAGMENT_RES_IDS:Array = [204001251,204001252,204001253,204001254,204001255];
      
      public static const PLAYER_PREVIEW_RES_IDS:Array = [10000101,10000201,10000301,10000401,10000501];
      
      public static const PLAYER_NINJA_ID:uint = 20400125;
      
      public static const MONEY_ID:uint = 11000001;
      
      public static const DIANQUAN_ID:uint = 11100002;
      
      public static const YUANBAO_ID:uint = 11300003;
      
      public static const STAMINA_ID:uint = 11200004;
      
      public static const STRENGTH_ITEM:uint = 1005;
      
      public static const FEI_LEI_SHEN:uint = 10800063;
       
      public function BagUtils()
      {
         super();
         throw new Error(BagUtils + " can not be instantiated.");
      }
      
      public static function get plugin() : IRSModelPlugin
      {
         return Facade.getInstance().retrievePlugin(PluginDef.RSMODEL) as IRSModelPlugin;
      }
      
      public static function get model() : BagModel
      {
         return (plugin as Plugin).retrieveModel(ModelDef.BAG) as BagModel;
      }
      
      public static function calcItemTab(param1:uint) : int
      {
         return param1 / 10000000;
      }
      
      public static function calcItemType(param1:uint) : int
      {
         return param1 / 1000000 % 10;
      }
      
      public static function calcItemSubtype(param1:uint) : int
      {
         return param1 / 100000 % 10;
      }
      
      public static function calcEquipmentType(param1:uint) : int
      {
         return param1 / 1000 % 10;
      }
      
      public static function calcGemType(param1:uint) : int
      {
         var _loc2_:int = param1 / 1000 % 100;
         if(isNarutoGem(param1) && _loc2_ > 5)
         {
            return _loc2_ + 5;
         }
         return _loc2_;
      }
      
      public static function isNarutoStone(param1:uint) : Boolean
      {
         if(!isJewel(param1))
         {
            return false;
         }
         var _loc2_:int = param1 / 100000 % 10;
         var _loc3_:int = param1 / 1000 % 100;
         if(_loc2_ == 0 && _loc3_ >= 6 && _loc3_ <= 10)
         {
            return true;
         }
         return false;
      }
      
      public static function isNarutoGem(param1:uint) : Boolean
      {
         if(!isJewel(param1))
         {
            return false;
         }
         var _loc2_:int = param1 / 100000 % 10;
         var _loc3_:int = param1 / 1000 % 100;
         if(_loc2_ == 7 && _loc3_ >= 1 && _loc3_ <= 6)
         {
            return true;
         }
         return false;
      }
      
      public static function isUsableItem(param1:uint) : Boolean
      {
         return calcItemTab(param1) == ItemTabs.USABLE;
      }
      
      public static function isCardItem(param1:uint) : Boolean
      {
         return uint(param1 / 100000) == ItemTabs.CARD;
      }
      
      public static function isEquipmentItem(param1:uint) : Boolean
      {
         return calcItemTab(param1) == ItemTabs.EQUIPMENT;
      }
      
      public static function isGemItem(param1:uint) : Boolean
      {
         if(!isJewel(param1))
         {
            return false;
         }
         if(calcGemType(param1) > 6)
         {
            return false;
         }
         return true;
      }
      
      public static function isJewel(param1:uint) : Boolean
      {
         return calcItemTab(param1) == ItemTabs.GEM;
      }
      
      public static function isTaskItem(param1:uint) : Boolean
      {
         return calcItemTab(param1) == ItemTabs.TASK;
      }
      
      public static function isNinjaPropsItem(param1:uint) : Boolean
      {
         return calcItemTab(param1) == ItemTabs.NINJA_PROPS;
      }
      
      public static function isBeastFragment(param1:uint) : Boolean
      {
         return uint(param1 / 100000) == ItemTabs.BEAST_FRAGMENTS;
      }
      
      public static function isBeastRune(param1:uint) : Boolean
      {
         return uint(param1 / 100000) == ItemTabs.BEAST_RUNES;
      }
      
      public static function isRewardPackageItem(param1:uint) : Boolean
      {
         return calcItemTab(param1) == ItemTabs.USABLE && calcItemType(param1) == 0 && calcItemSubtype(param1) == 1;
      }
      
      public static function isTreasureMapItem(param1:uint) : Boolean
      {
         return uint(param1 / 100000) == ItemTabs.TREASURE_MAP;
      }
      
      public static function isFashionItem(param1:uint) : Boolean
      {
         return uint(param1 / 100000) == ItemTabs.FASHION;
      }
      
      public static function isChrismasItem(param1:uint) : Boolean
      {
         return param1 == 10190106;
      }
      
      public static function isStrengthItem(param1:uint) : Boolean
      {
         var _loc2_:CommonItemData = createItemData(param1,0) as CommonItemData;
         return _loc2_ != null && _loc2_.val1 == STRENGTH_ITEM;
      }
      
      public static function isNameChangeItem(param1:uint) : Boolean
      {
         return calcItemTab(param1) == ItemTabs.USABLE && calcItemType(param1) == 2 && calcItemSubtype(param1) == 6;
      }
      
      public static function isCanYe(param1:uint) : Boolean
      {
         return uint(param1 / 100000) == ItemTabs.CAN_YE;
      }
      
      public static function isGuildNameChangeItem(param1:uint) : Boolean
      {
         return param1 == 13500001;
      }
      
      public static function isMoney(param1:uint) : Boolean
      {
         return param1 == MONEY_ID;
      }
      
      public static function isDianquan(param1:uint) : Boolean
      {
         return param1 == DIANQUAN_ID;
      }
      
      public static function isYuanbao(param1:uint) : Boolean
      {
         return param1 == YUANBAO_ID;
      }
      
      public static function isStamina(param1:uint) : Boolean
      {
         return param1 == STAMINA_ID;
      }
      
      public static function isSelGift(param1:uint) : Boolean
      {
         var _loc2_:* = false;
         var _loc3_:CommonItemData = null;
         var _loc4_:uint = 0;
         var _loc5_:GetRewardCfgCommand = null;
         if(isRewardPackageItem(param1))
         {
            _loc3_ = createItemData(param1,0) as CommonItemData;
            _loc4_ = _loc3_.val2;
            _loc5_ = new GetRewardCfgCommand(_loc4_);
            _loc5_.call();
            if(_loc5_ && _loc5_.cfg && _loc5_.cfg.randomType == GetRewardCfgCommand.TYPE_SEL_GIFT)
            {
               _loc2_ = true;
            }
         }
         return _loc2_;
      }
      
      public static function createItemData(param1:uint, param2:int = 0) : ItemData
      {
         var _loc3_:ItemData = null;
         if(isNinjaPropsItem(param1))
         {
            _loc3_ = ninjaPropsModel != null?ninjaPropsModel.getNinjaPropsCfgInfo(param1):null;
            if(_loc3_ != null)
            {
               _loc3_.num = param2;
            }
         }
         else
         {
            if(isEquipmentItem(param1))
            {
               _loc3_ = new EquipmentItemData();
            }
            else if(isJewel(param1))
            {
               _loc3_ = new GemItemData();
            }
            else if(isCardItem(param1))
            {
               _loc3_ = new CardItemData();
            }
            else if(isNinjaPropsItem(param1))
            {
               _loc3_ = new NinjaPropsCfgInfo();
            }
            else if(isBeastFragment(param1))
            {
               _loc3_ = new BeastFragmentData();
            }
            else if(isBeastRune(param1))
            {
               _loc3_ = new BeastRuneData();
            }
            else if(isTreasureMapItem(param1))
            {
               _loc3_ = new TreasureMapItemData();
            }
            else
            {
               _loc3_ = new CommonItemData();
            }
            _loc3_.id = param1;
            _loc3_.num = param2;
            BagItemConf.fillData(_loc3_);
         }
         return _loc3_;
      }
      
      private static function get ninjaPropsModel() : NinjaPropsModel
      {
         return Facade.getInstance().model.retrieveModel(ModelDef.NINJA_PROPS) as NinjaPropsModel;
      }
      
      public static function getColoredItemName(param1:uint, param2:String = "") : String
      {
         var _loc3_:ItemData = null;
         var _loc4_:RequestNinjaPropsCfgCommand = null;
         var _loc5_:String = null;
         if(isNinjaPropsItem(param1))
         {
            _loc4_ = new RequestNinjaPropsCfgCommand(Vector.<uint>([param1]));
            _loc4_.call();
            _loc3_ = _loc4_.props != null && _loc4_.props.length > 0?_loc4_.props[0]:null;
         }
         else
         {
            _loc3_ = BagItemConf.findDataById(param1);
         }
         if(_loc3_ != null)
         {
            _loc5_ = "<font color=\'#" + _loc3_.color.toString(16) + "\'>" + (isCardItem(_loc3_.id)?_loc3_.name + (_loc3_ as CardItemData).title:_loc3_.name) + param2 + "</font>";
            return _loc5_;
         }
         return null;
      }
      
      public static function getRewardDesc(param1:uint, param2:int) : String
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 1, Size: 1)
          */
         throw new IllegalOperationError("Not decompiled due to error");
      }
      
      public static function getItemResUrl(param1:uint) : String
      {
         var _loc3_:uint = 0;
         if(param1 == PLAYER_NINJA_ID)
         {
            var param1:uint = getPlayerFragmentResId();
         }
         else
         {
            _loc3_ = BagItemConf.findDataById(param1,true).resId;
            if(_loc3_ > 0)
            {
               param1 = _loc3_;
            }
         }
         var _loc2_:String = getItemImgResRoot().replace("*",param1);
         return FileManager.getQualifiedUrl(_loc2_);
      }
      
      public static function getNinjaCardResUrl(param1:uint) : String
      {
         return FileManager.getQualifiedUrl(getNinjaCardResRoot().replace("*",param1));
      }
      
      public static function getNinjaPreviewResUrl(param1:uint) : String
      {
         if(param1 == PLAYER_NINJA_ID)
         {
            var param1:uint = getPlayerPreviewResId();
         }
         var _loc2_:String = getItemImgResRoot().replace("*",param1);
         return FileManager.getQualifiedUrl(getNinjaPreviewResRoot().replace("*",param1));
      }
      
      public static function getPlayerFragmentResId() : uint
      {
         var _loc1_:int = ApplicationData.singleton.selfInfo.professions;
         return PLAYER_FRAGMENT_RES_IDS[_loc1_ - 1];
      }
      
      public static function getPlayerPreviewResId() : uint
      {
         var _loc1_:int = ApplicationData.singleton.selfInfo.professions;
         return PLAYER_PREVIEW_RES_IDS[_loc1_ - 1];
      }
      
      public static function getColorValueByIndex(param1:int) : uint
      {
         if(param1 >= 0 && param1 < QUALITY_COLORS.length)
         {
            return QUALITY_COLORS[param1];
         }
         return QUALITY_COLORS[0];
      }
      
      public static function getColorIndexByValue(param1:uint) : int
      {
         return QUALITY_COLORS.indexOf(param1);
      }
      
      private static function getItemImgResRoot() : String
      {
         return "assets/bag/item/*.png";
      }
      
      private static function getItemSwfResRoot() : String
      {
         return "assets/bag/item/*.swf";
      }
      
      private static function getNinjaCardResRoot() : String
      {
         return "assets/bag/ninja/card/*.png";
      }
      
      private static function getNinjaPreviewResRoot() : String
      {
         return "assets/bag/ninja/preview/*.png";
      }
   }
}
