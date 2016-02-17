package com.tencent.morefun.naruto.mmefile.render
{
   import com.tencent.morefun.naruto.mmefile.render.datas.PointElementData;
   
   class BaseInnerRenderer
   {
       
      protected var render:com.tencent.morefun.naruto.mmefile.render.MmeAssetRender;
      
      protected var currFrame:int = -1;
      
      protected var currTotalFrame:int;
      
      protected var currActionName:String;
      
      function BaseInnerRenderer(param1:com.tencent.morefun.naruto.mmefile.render.MmeAssetRender)
      {
         super();
         this.render = param1;
      }
      
      function gotoAction(param1:String, param2:int = 0) : Boolean
      {
         return false;
      }
      
      function update() : void
      {
      }
      
      public function setCurrFrame(param1:int) : void
      {
         this.currFrame = param1;
      }
      
      public function getCurrFrame() : int
      {
         return this.currFrame;
      }
      
      public function getCurrTototalFrame() : int
      {
         return this.currTotalFrame;
      }
      
      public function getCurrActionName() : String
      {
         return this.currActionName;
      }
      
      public function getCurrReferPoints() : Array
      {
         return null;
      }
      
      public function getCurrReferPointByName(param1:String) : PointElementData
      {
         return null;
      }
      
      public function getReferPointsFromAction(param1:String, param2:int) : Array
      {
         return null;
      }
      
      public function getReferPointFromActionByName(param1:String, param2:int, param3:String) : PointElementData
      {
         return null;
      }
      
      public function getTotalFrameByActionName(param1:String) : int
      {
         return 0;
      }
      
      public function getActionNames() : Array
      {
         return null;
      }
      
      public function hasActionName(param1:String) : Boolean
      {
         return false;
      }
      
      public function eventIndexOf(param1:String, param2:String, param3:int = 1) : Array
      {
         return null;
      }
      
      public function destroy() : void
      {
         this.currActionName = null;
         this.currFrame = -1;
         this.currTotalFrame = 0;
         this.render = null;
      }
      
      public function hitTestPoint(param1:Number, param2:Number) : Boolean
      {
         throw new Error("子类需要重写");
      }
      
      public function autoSetNull() : void
      {
         this.render = null;
         this.currActionName = null;
      }
   }
}
