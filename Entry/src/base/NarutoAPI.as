package base
{
   import serverProto.inc.ProtoItemInfo;
   import bag.utils.BagUtils;
   import flash.geom.Point;
   import flash.display.DisplayObject;
   import bag.data.ItemData;
   import com.tencent.morefun.naruto.util.GameTip;
   import user.command.FloatItemAnimationCommand;
   import bag.data.CardItemData;
   
   public class NarutoAPI
   {
       
      public function NarutoAPI()
      {
         super();
      }
      
      public static function getAwardItem(param1:Array) : Array
      {
         var _loc3_:ProtoItemInfo = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc2_.push(BagUtils.createItemData(_loc3_.id,_loc3_.num));
         }
         return _loc2_;
      }
      
      public static function getStagePoint(param1:DisplayObject, param2:Number = 0, param3:Number = 0) : Point
      {
         if(param1.parent)
         {
            return param1.parent.globalToLocal(new Point(param2,param3));
         }
         return new Point(param2,param3);
      }
      
      public static function showAward(param1:Array, param2:Point = null, param3:String = "获得") : void
      {
         var _loc6_:ItemData = null;
         var _loc7_:* = undefined;
         if(param1 == null || param1.length == 0)
         {
            return;
         }
         var _loc4_:String = param3;
         var _loc5_:Array = [];
         for each(_loc7_ in param1)
         {
            if(_loc7_ is ProtoItemInfo)
            {
               _loc6_ = BagUtils.createItemData(_loc7_.id,_loc7_.num);
            }
            else if(_loc7_ is ItemData)
            {
               _loc6_ = _loc7_;
            }
            _loc4_.length > param3.length && (_loc4_ = _loc4_ + "、");
            _loc4_ = _loc4_ + getItemDataStr(_loc6_);
            _loc5_.push(_loc6_);
         }
         GameTip.show(_loc4_);
         if(param2 != null)
         {
            new FloatItemAnimationCommand(_loc5_,param2).call();
         }
      }
      
      public static function getItemDataStr(param1:*) : String
      {
         var _loc3_:ItemData = null;
         var _loc2_:String = "";
         if(param1 is ProtoItemInfo)
         {
            _loc3_ = BagUtils.createItemData(param1.id,param1.num);
         }
         else if(param1 is ItemData)
         {
            _loc3_ = param1;
         }
         if(_loc3_ is CardItemData)
         {
            _loc2_ = _loc2_ + (_loc3_.name + (_loc3_ as CardItemData).title + "碎片x" + _loc3_.num);
         }
         else
         {
            _loc2_ = _loc2_ + (_loc3_.name + "x" + _loc3_.num);
         }
         return _loc2_;
      }
      
      public static function getTfStr(param1:*, param2:uint = 15328409, param3:uint = 12, param4:Boolean = false) : String
      {
         var _loc5_:String = "<font color=\'#" + param2.toString(16) + "\' size=\'" + param3 + "\'>" + param1 + "</font>";
         if(param4)
         {
            _loc5_ = "<b>" + _loc5_ + "</b>";
         }
         return _loc5_;
      }
   }
}
