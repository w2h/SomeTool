package com.tencent.morefun.naruto.mmefile.render.datas
{
   public class FrameData extends BaseFrameData
   {
      
      public static const ClassAlias:String = "FrameData";
       
      public var event:String;
      
      public var events:Array;
      
      public var element:com.tencent.morefun.naruto.mmefile.render.datas.BaseElementData;
      
      public var useTween:Boolean;
      
      public var phantom:com.tencent.morefun.naruto.mmefile.render.datas.PhantomData;
      
      public var sound:uint;
      
      public var volume:uint;
      
      public function FrameData()
      {
         super();
         this.phantom = new com.tencent.morefun.naruto.mmefile.render.datas.PhantomData();
      }
      
      public function decode(param1:XML) : void
      {
         index = param1.@index;
         length = param1.@length;
         this.event = param1.@event;
         if(this.event.indexOf(",") == -1)
         {
            this.events = [this.event];
         }
         else
         {
            this.events = this.event.split(",");
         }
         this.useTween = String(param1.@tween) == "true";
         this.phantom.decode(param1);
         if(param1.element.length() > 0)
         {
            this.element = new ElementData();
            this.element.decode(param1.element[0]);
         }
         if(param1.pointElement.length() > 0)
         {
            this.element = new PointElementData();
            this.element.decode(param1.pointElement[0]);
         }
         this.sound = parseInt(param1.@sound);
         this.volume = parseInt(param1.@volume);
      }
      
      public function clone() : FrameData
      {
         var _loc1_:FrameData = new FrameData();
         _loc1_.index = index;
         _loc1_.length = length;
         _loc1_.event = this.event;
         _loc1_.useTween = this.useTween;
         _loc1_.phantom = this.phantom.clone();
         if(this.element)
         {
            _loc1_.element = this.element.clone();
         }
         _loc1_.sound = this.sound;
         _loc1_.volume = this.volume;
         return _loc1_;
      }
      
      override public function autoSetNull() : void
      {
         if(super.hasOwnProperty("autoSetNull"))
         {
            super.["autoSetNull"]();
         }
         this.event = null;
         this.events = null;
         this.element = null;
         this.phantom = null;
      }
   }
}
