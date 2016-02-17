package com.tencent.morefun.framework.apf.core.activity
{
   import com.tencent.morefun.framework.apf.core.plugin.Plugin;
   
   public class Activity extends Plugin
   {
       
      public function Activity()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return this.name;
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
