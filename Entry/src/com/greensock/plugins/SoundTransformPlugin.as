package com.greensock.plugins
{
   import flash.media.SoundTransform;
   import com.greensock.TweenLite;
   
   public class SoundTransformPlugin extends TweenPlugin
   {
      
      public static const API:Number = 1;
       
      protected var _target:Object;
      
      protected var _st:SoundTransform;
      
      public function SoundTransformPlugin()
      {
         super();
         this.propName = "soundTransform";
         this.overwriteProps = ["soundTransform","volume"];
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _loc4_:String = null;
         if(!param1.hasOwnProperty("soundTransform"))
         {
            return false;
         }
         this._target = param1;
         this._st = this._target.soundTransform;
         for(_loc4_ in param2)
         {
            addTween(this._st,_loc4_,this._st[_loc4_],param2[_loc4_],_loc4_);
         }
         return true;
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         updateTweens(param1);
         this._target.soundTransform = this._st;
      }
      
      override public function autoSetNull() : void
      {
         if(super.hasOwnProperty("autoSetNull"))
         {
            super.["autoSetNull"]();
         }
         this._target = null;
         this._st = null;
      }
   }
}
