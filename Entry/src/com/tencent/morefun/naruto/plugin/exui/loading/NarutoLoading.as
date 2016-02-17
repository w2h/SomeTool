package com.tencent.morefun.naruto.plugin.exui.loading
{
   import ui.loading.ProgressLoadingUI;
   import flash.events.Event;
   import ui.loading.FullScreenProgressLoadingUI;
   
   public class NarutoLoading
   {
      
      public static var lockFullLoading:Boolean;
      
      private static var _busyIndicator:com.tencent.morefun.naruto.plugin.exui.loading.BusyIndicatorView;
      
      private static var _loadingView:com.tencent.morefun.naruto.plugin.exui.loading.ProgressLoadingView;
      
      private static var _fullScreenLoadingView:com.tencent.morefun.naruto.plugin.exui.loading.ProgressLoadingView;
      
      private static var _currentLoadingView:com.tencent.morefun.naruto.plugin.exui.loading.ProgressLoadingView;
       
      public function NarutoLoading()
      {
         super();
      }
      
      public static function get busyLoadingView() : com.tencent.morefun.naruto.plugin.exui.loading.BusyIndicatorView
      {
         return _busyIndicator = _busyIndicator || new com.tencent.morefun.naruto.plugin.exui.loading.BusyIndicatorView();
      }
      
      public static function get loadingView() : com.tencent.morefun.naruto.plugin.exui.loading.ProgressLoadingView
      {
         if(!_loadingView)
         {
            _loadingView = new com.tencent.morefun.naruto.plugin.exui.loading.ProgressLoadingView(new ProgressLoadingUI(),0);
            _loadingView.addEventListener(Event.ADDED_TO_STAGE,loadingChangeHandler);
         }
         return _loadingView;
      }
      
      public static function get fullScreenLoadingView() : com.tencent.morefun.naruto.plugin.exui.loading.ProgressLoadingView
      {
         if(!_fullScreenLoadingView)
         {
            _fullScreenLoadingView = new com.tencent.morefun.naruto.plugin.exui.loading.ProgressLoadingView(new FullScreenProgressLoadingUI());
            _fullScreenLoadingView.addEventListener(Event.ADDED_TO_STAGE,loadingChangeHandler);
         }
         return _fullScreenLoadingView;
      }
      
      public static function get currentLoadingView() : com.tencent.morefun.naruto.plugin.exui.loading.ProgressLoadingView
      {
         return _currentLoadingView;
      }
      
      private static function loadingChangeHandler(param1:Event) : void
      {
         _currentLoadingView = param1.currentTarget as ProgressLoadingView;
      }
      
      public static function hideLoadingView() : void
      {
         if(_currentLoadingView)
         {
            _currentLoadingView.hide();
            _currentLoadingView = null;
         }
      }
   }
}
