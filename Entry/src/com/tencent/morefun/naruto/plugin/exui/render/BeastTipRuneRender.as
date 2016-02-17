package com.tencent.morefun.naruto.plugin.exui.render
{
   import com.tencent.morefun.naruto.plugin.ui.base.ItemRenderer;
   import com.tencent.morefun.naruto.plugin.ui.components.interfaces.IRender;
   import com.tencent.morefun.naruto.plugin.exui.item.ItemIcon;
   import bag.data.BeastRuneData;
   import bag.utils.BagUtils;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.BeastTipRuneRenderUI;
   
   public class BeastTipRuneRender extends ItemRenderer implements IRender
   {
      
      private static const VAL_LABELS:Array = ["生命","攻击","防御","忍术","抗性"];
       
      public var itemIcon:ItemIcon;
      
      public function BeastTipRuneRender()
      {
         super(new BeastTipRuneRenderUI());
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc3_:String = null;
         var _loc4_:* = 0;
         var _loc2_:BeastRuneData = param1 as BeastRuneData;
         if(_loc2_)
         {
            this.itemIcon = new ItemIcon(60,60);
            this.itemIcon.loadIconByData(_loc2_);
            skin["empty"].addChild(this.itemIcon);
            skin["itemName"].htmlText = "<b>" + BagUtils.getColoredItemName(_loc2_.id) + "</b>";
            _loc3_ = "";
            _loc4_ = 1;
            while(_loc4_ < 6)
            {
               if(_loc2_["val" + _loc4_] > 0)
               {
                  if(_loc3_ != "")
                  {
                     _loc3_ = _loc3_ + "\n";
                  }
                  _loc3_ = _loc3_ + ("<font color=\'#E9E499\'>" + VAL_LABELS[_loc4_ - 1] + "</font> <font color=\'#00FF00\'>+" + _loc2_["val" + _loc4_] + "</font>");
               }
               _loc4_++;
            }
            skin["prop"].htmlText = _loc3_;
         }
      }
      
      override public function get width() : Number
      {
         return 190;
      }
      
      override public function get height() : Number
      {
         return 60;
      }
      
      public function dispose() : void
      {
         if(this.itemIcon)
         {
            this.itemIcon.parent.removeChild(this.itemIcon);
            this.itemIcon.destroy();
            this.itemIcon = null;
         }
      }
   }
}
