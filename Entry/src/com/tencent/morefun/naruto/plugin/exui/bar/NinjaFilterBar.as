package com.tencent.morefun.naruto.plugin.exui.bar
{
   import flash.display.Sprite;
   import com.tencent.morefun.naruto.plugin.exui.dropDownList.NinjaStarLevelDropDownList;
   import com.tencent.morefun.naruto.plugin.exui.dropDownList.NinjaClassDropDownList;
   import com.tencent.morefun.naruto.plugin.exui.dropDownList.BeHitStateDropDownList;
   import com.tencent.morefun.naruto.plugin.exui.dropDownList.ExStateDropDownList;
   import flash.text.TextField;
   
   public class NinjaFilterBar extends Sprite
   {
       
      private var _ninjaRareDDL:NinjaStarLevelDropDownList;
      
      private var _ninjaClassDDL:NinjaClassDropDownList;
      
      private var _beHitStateDDL:BeHitStateDropDownList;
      
      private var _exStateDDL:ExStateDropDownList;
      
      private var _searchInput:TextField;
      
      private var _inputMsg:String;
      
      public function NinjaFilterBar(param1:Boolean = true, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = true, param6:Boolean = true)
      {
         super();
         this.initUI();
      }
      
      private function initUI() : void
      {
         this._ninjaRareDDL = new NinjaStarLevelDropDownList();
         this._beHitStateDDL = new BeHitStateDropDownList();
         this._exStateDDL = new ExStateDropDownList();
      }
   }
}
