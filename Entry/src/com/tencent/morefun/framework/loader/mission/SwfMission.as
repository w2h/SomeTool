package com.tencent.morefun.framework.loader.mission
{
   import com.tencent.morefun.framework.loader.LoaderEvent;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.system.LoaderContext;
   import flash.system.ImageDecodingPolicy;
   import flash.net.URLRequest;
   
   public class SwfMission extends LoaderMission
   {
       
      public function SwfMission(param1:String, param2:String, param3:Boolean = true, param4:uint = 1, param5:String = null, param6:Object = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function loaderStart(param1:Boolean) : void
      {
         loaderAbort();
         retryTime++;
         if(retryTime > MAX_RETRY_COUNT)
         {
            dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_ERROR,0,0,this));
            return;
         }
         loader = new Loader();
         loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.handler);
         loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.handler);
         var _loc2_:LoaderContext = new LoaderContext(false,applicationDomain);
         _loc2_.imageDecodingPolicy = ImageDecodingPolicy.ON_LOAD;
         loader.load(new URLRequest(getQaulifiedUrl(path)),_loc2_);
      }
      
      override protected function frame(param1:Event) : void
      {
         sprite.removeEventListener(Event.ENTER_FRAME,this.frame);
         dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_COMPLETE,0,0,this));
      }
      
      override protected function handler(param1:Event) : void
      {
         loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.handler);
         loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.handler);
         if(param1.type == Event.COMPLETE)
         {
            complete();
         }
         else
         {
            error();
         }
      }
      
      override public function autoSetNull() : void
      {
         if(super.hasOwnProperty("autoSetNull"))
         {
            super.["autoSetNull"]();
         }
      }
   }
}
