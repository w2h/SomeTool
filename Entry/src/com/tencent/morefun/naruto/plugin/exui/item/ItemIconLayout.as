package com.tencent.morefun.naruto.plugin.exui.item
{
   import flash.display.Sprite;
   import com.tencent.morefun.naruto.plugin.ui.components.layouts.EasyLayout;
   import bag.data.ItemData;
   import serverProto.inc.ProtoItemInfo;
   import bag.utils.BagUtils;
   import flash.display.MovieClip;
   
   public class ItemIconLayout extends Sprite
   {
       
      private var _datas:Array;
      
      private var _list:EasyLayout;
      
      public function ItemIconLayout(param1:int, param2:int = 1, param3:Number = 5, param4:Number = 5, param5:Boolean = true, param6:MovieClip = null)
      {
         super();
         this._list = new EasyLayout(ItemIconLayout,param1,param2,param3,param4,param5,param6);
         addChild(this._list);
      }
      
      public function get datas() : Array
      {
         return this._datas;
      }
      
      public function set datas(param1:Array) : void
      {
         var _loc2_:Array = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:ItemData = null;
         this._datas = param1;
         if(this._datas)
         {
            _loc2_ = [];
            _loc3_ = this._datas.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               if(this._datas[_loc4_] is ItemData)
               {
                  _loc2_.push(this._datas[_loc4_]);
               }
               else if(this._datas[_loc4_] is ProtoItemInfo)
               {
                  _loc5_ = BagUtils.createItemData((this._datas[_loc4_] as ProtoItemInfo).id,(this._datas[_loc4_] as ProtoItemInfo).num);
                  _loc2_.push(_loc5_);
               }
               else if(this._datas[_loc4_] is int)
               {
                  _loc5_ = BagUtils.createItemData(this._datas[_loc4_]);
                  _loc2_.push(_loc5_);
               }
               _loc4_++;
            }
            this._list.dataProvider = _loc2_;
         }
         else
         {
            this._list.dataProvider = null;
         }
      }
      
      public function dispose() : void
      {
         this._list.dispose();
         this._list = null;
         this._datas = null;
      }
   }
}

import com.tencent.morefun.naruto.plugin.exui.item.ItemIcon;
import com.tencent.morefun.naruto.plugin.ui.components.interfaces.IRender;
import bag.data.ItemData;

class InnerItemIcon extends ItemIcon implements IRender
{
    
   function InnerItemIcon()
   {
      super();
   }
   
   public function get data() : Object
   {
      return null;
   }
   
   public function set data(param1:Object) : void
   {
      loadIconByData(param1 as ItemData,true,true);
   }
   
   public function dispose() : void
   {
      unload();
   }
}
