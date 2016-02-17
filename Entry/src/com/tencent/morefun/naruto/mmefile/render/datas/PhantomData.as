package com.tencent.morefun.naruto.mmefile.render.datas
{
   public class PhantomData
   {
      
      public static const ClassAlias:String = "PhantomData";
      
      public static const TYPE_ON:String = "on";
      
      public static const TYPE_ON_AND_SPANNING:String = "onAndSpanning";
      
      public static const TYPE_OFF:String = "off";
       
      public var type:String;
      
      public var color:com.tencent.morefun.naruto.mmefile.render.datas.ColorData;
      
      public var interval:int;
      
      public var dAlpha:int;
      
      public function PhantomData()
      {
         super();
         this.color = new com.tencent.morefun.naruto.mmefile.render.datas.ColorData();
      }
      
      public function decode(param1:XML) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 1, Size: 1)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function clone() : PhantomData
      {
         var _loc1_:PhantomData = new PhantomData();
         _loc1_.type = this.type;
         _loc1_.color = this.color.clone();
         _loc1_.interval = this.interval;
         _loc1_.dAlpha = this.dAlpha;
         return _loc1_;
      }
      
      public function autoSetNull() : void
      {
         this.type = null;
         this.color = null;
      }
   }
}
