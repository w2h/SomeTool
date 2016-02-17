package com.tencent.morefun.naruto.plugin.exui.avatar
{
   import flash.display.Sprite;
   import com.tencent.morefun.naruto.plugin.exui.base.Image;
   import serverProto.guild.ProtoGuildBeastInfo;
   
   public class GuildBeastAvartar extends Sprite
   {
       
      private var _img:Image;
      
      public function GuildBeastAvartar(param1:int = 75, param2:int = 75)
      {
         super();
         this._img = new Image(param1,param2,true);
         this._img.smoothing = true;
         this.mouseChildren = false;
         this.addChild(this._img);
      }
      
      public function destroy() : void
      {
         this._img.dispose();
         this._img = null;
      }
      
      public function loadByData(param1:ProtoGuildBeastInfo) : void
      {
         var _loc2_:String = null;
         if(param1 != null)
         {
            _loc2_ = "assets/bag/item/" + param1.id + ".png";
            this._img.load(_loc2_);
         }
         else
         {
            this._img.dispose();
         }
      }
   }
}
