package com.greensock.plugins
{
   public class RemoveTintPlugin extends TintPlugin
   {
      
      public static const API:Number = 1;
       
      public function RemoveTintPlugin()
      {
         super();
         this.propName = "removeTint";
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
