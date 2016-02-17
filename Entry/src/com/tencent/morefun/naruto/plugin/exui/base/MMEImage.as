package com.tencent.morefun.naruto.plugin.exui.base
{
   import flash.display.Loader;
   import com.tencent.morefun.naruto.mmefile.render.MmeAssetRender;
   
   public class MMEImage extends Image
   {
       
      public var startFrame:int;
      
      public function MMEImage(param1:int = 0, param2:int = 0, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override protected function processImage(param1:Loader, param2:String) : void
      {
         if(String(param2.split("?").shift().match(new RegExp("[^\\.]+$"))).toLowerCase() == "swf")
         {
            super.processImage(param1,param2);
         }
         else
         {
            addChild(_content = new MmeAssetRender());
            MmeAssetRender(_content).load(param1.contentLoaderInfo.applicationDomain);
            MmeAssetRender(_content).play(MmeAssetRender(_content).getMmeData().actionDatas[0].name,this.startFrame,true);
         }
      }
      
      override public function dispose(param1:Boolean = false) : void
      {
         if(_content is MmeAssetRender)
         {
            (_content as MmeAssetRender).unload();
         }
         super.dispose(param1);
      }
   }
}
