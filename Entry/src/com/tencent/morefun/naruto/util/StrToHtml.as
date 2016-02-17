package com.tencent.morefun.naruto.util
{
   public class StrToHtml
   {
       
      public function StrToHtml()
      {
         super();
      }
      
      public static function checkspace(param1:String) : String
      {
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc2_:String = "";
         var _loc3_:String = param1;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.length)
         {
            if(_loc3_.charAt(_loc4_) == " ")
            {
               _loc6_ = _loc4_ + 1;
               while(_loc6_ < _loc3_.length)
               {
                  _loc2_ = _loc2_ + _loc3_.charAt(_loc6_);
                  _loc6_++;
               }
               _loc3_ = _loc2_;
               _loc2_ = "";
               _loc4_ = -1;
               _loc4_++;
               continue;
            }
            break;
         }
         var _loc5_:int = _loc3_.length - 1;
         while(_loc5_ >= 0)
         {
            if(_loc3_.charAt(_loc5_) == " ")
            {
               _loc7_ = 0;
               while(_loc7_ < _loc5_)
               {
                  _loc2_ = _loc2_ + _loc3_.charAt(_loc7_);
                  _loc7_++;
               }
               _loc3_ = _loc2_;
               _loc2_ = "";
               _loc5_--;
               continue;
            }
            break;
         }
         return _loc3_;
      }
      
      public static function createInstance(param1:String, param2:String) : String
      {
         var _loc3_:String = null;
         var _loc4_:RegExp = null;
         var _loc5_:Object = null;
         _loc4_ = new RegExp("{r}","g");
         _loc3_ = param1.replace(_loc4_,"<font color=\'red\'>");
         _loc4_ = new RegExp("{/r}","g");
         _loc3_ = _loc3_.replace(_loc4_,"</font>");
         _loc4_ = new RegExp("{c}","g");
         if(param2 == null)
         {
            _loc3_ = _loc3_.replace(_loc4_,"<u><font color=\'#E0CC85\'>");
            _loc4_ = new RegExp("{/c}","g");
            _loc3_ = _loc3_.replace(_loc4_,"</font></u>");
         }
         else
         {
            _loc3_ = _loc3_.replace(_loc4_,"<u><font color=\'#E0CC85\'><a href=\'event:" + param2 + "\'>");
            _loc4_ = new RegExp("{/c}","g");
            _loc3_ = _loc3_.replace(_loc4_,"</a></font></u>");
         }
         return _loc3_;
      }
      
      public static function to(param1:String, param2:String = null, param3:String = null) : String
      {
         var _loc4_:String = param1.replace(new RegExp("\\{r\\}","g"),"<font color=\'red\'>").replace(new RegExp("\\{\\/r\\}","g"),"</font>");
         _loc4_ = _loc4_.replace(new RegExp("\\{#([^\\}]+)\\}","g"),"<font color=\'#$1\'>").replace(new RegExp("\\{\\/#\\}","g"),"</font>");
         var _loc5_:String = param3?"<font color=\'" + param3 + "\'>":"";
         var _loc6_:String = _loc5_?"</font>":"";
         if(param2 == null)
         {
            _loc4_ = _loc4_.replace(new RegExp("\\{c\\}","g"),_loc5_).replace(new RegExp("\\{\\/c\\}","g"),_loc6_);
         }
         else
         {
            _loc4_ = _loc4_.replace(new RegExp("\\{c\\}","g"),"<a href=\'event:" + param2 + "\'><u>" + _loc5_).replace(new RegExp("\\{\\/c\\}","g"),_loc6_ + "</u></a>");
         }
         return _loc4_;
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
