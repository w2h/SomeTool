package com.tencent.morefun.naruto.plugin.exui.render
{
   import com.tencent.morefun.naruto.plugin.ui.base.ItemRenderer;
   import com.tencent.morefun.naruto.plugin.ui.components.interfaces.IRender;
   import flash.text.TextField;
   import flash.events.MouseEvent;
   import com.tencent.morefun.naruto.plugin.exui.event.PopupListItemClickedEvent;
   
   public class PopupListItemRender extends ItemRenderer implements IRender
   {
       
      private var m_view:com.tencent.morefun.naruto.plugin.exui.render.PopupItemUI;
      
      private var m_tf:TextField;
      
      public function PopupListItemRender()
      {
         addChild(this.m_view = new com.tencent.morefun.naruto.plugin.exui.render.PopupItemUI());
         super(null);
         this.init();
      }
      
      private function init() : void
      {
         this.m_view.getChildByName("selectedMC").visible = false;
         this.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         this.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         this.addEventListener(MouseEvent.CLICK,this.onMouseClick);
         this.m_tf = this.m_view.getChildByName("tf_name") as TextField;
      }
      
      protected function render() : void
      {
         this.m_tf.htmlText = "<font color=\'#cccccc\'><a href=\'event:\' ><u><b>" + this.data + "</b></u></a></font>";
      }
      
      override public function get data() : Object
      {
         return super.data;
      }
      
      override public function set data(param1:Object) : void
      {
         if(param1 != null && param1 != m_data)
         {
            super.data = param1;
            this.render();
         }
      }
      
      private function onMouseOver(param1:MouseEvent) : void
      {
         this.m_view.getChildByName("selectedMC").visible = true;
         this.m_tf.htmlText = "<font color=\'#ffffff\'><a href=\'event:\' ><u><b>" + this.data + "</b></u></a></font>";
      }
      
      private function onMouseOut(param1:MouseEvent) : void
      {
         this.m_view.getChildByName("selectedMC").visible = false;
         this.m_tf.htmlText = "<font color=\'#cccccc\'><a href=\'event:\' ><u><b>" + this.data + "</b></u></a></font>";
      }
      
      override public function destroy() : void
      {
         this.dispose();
         super.destroy();
      }
      
      public function dispose() : void
      {
         this.removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         this.removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         this.removeEventListener(MouseEvent.CLICK,this.onMouseClick);
      }
      
      override public function get height() : Number
      {
         return 21;
      }
      
      protected function onMouseClick(param1:MouseEvent) : void
      {
         var _loc2_:PopupListItemClickedEvent = new PopupListItemClickedEvent(PopupListItemClickedEvent.ITEM_CLICKED,true);
         _loc2_.label = String(this.data);
         this.dispatchEvent(_loc2_);
      }
   }
}
