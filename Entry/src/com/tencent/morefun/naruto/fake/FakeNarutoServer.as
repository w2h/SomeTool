package com.tencent.morefun.naruto.fake
{
   import com.tencent.morefun.framework.apf.core.plugin.Plugin;
   import com.tencent.morefun.naruto.base.interfaces.INarutoServer;
   
   public class FakeNarutoServer extends Plugin implements INarutoServer
   {
       
      private var _socketConnecter:com.tencent.morefun.naruto.fake.FakeSocketServer;
      
      public function FakeNarutoServer()
      {
         super();
         this._socketConnecter = new com.tencent.morefun.naruto.fake.FakeSocketServer();
      }
      
      override public function initialize(param1:XML) : void
      {
      }
      
      public function get socketConnecter() : Object
      {
         return this._socketConnecter;
      }
      
      override public function getPluginName() : String
      {
         return "server.INarutoServer";
      }
   }
}
