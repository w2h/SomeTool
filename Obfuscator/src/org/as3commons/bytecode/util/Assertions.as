package org.as3commons.bytecode.util
{
   import org.as3commons.bytecode.abc.LNamespace;
   import org.as3commons.bytecode.abc.enum.NamespaceKind;
   
   public final class Assertions
   {
       
      public function Assertions()
      {
         super();
      }
      
      public static function assertArrayContentsEqual(param1:*, param2:*) : Boolean
      {
         return assertArrayOrVectorContentsEqual(param1,param2);
      }
      
      public static function assertVectorContentsEqual(param1:*, param2:*) : Boolean
      {
         return assertArrayOrVectorContentsEqual(param1,param2);
      }
      
      private static function assertArrayOrVectorContentsEqual(param1:*, param2:*) : Boolean
      {
         var firstArray:* = param1;
         var secondArray:* = param2;
         if(firstArray.length != secondArray.length)
         {
            throw new Error("Array lengths (" + firstArray.length + "," + secondArray.length + ") do not match");
         }
         var contentsMatch:Boolean = firstArray.every(function(param1:Object, param2:int, param3:Array):Boolean
         {
            var _loc5_:* = undefined;
            var _loc4_:* = false;
            for each(_loc5_ in secondArray)
            {
               if(_loc5_.hasOwnProperty("equals"))
               {
                  if(_loc5_.equals(param1))
                  {
                     _loc4_ = true;
                     break;
                  }
                  if(_loc5_ is LNamespace)
                  {
                     if(LNamespace(_loc5_).kind == NamespaceKind.PRIVATE_NAMESPACE)
                     {
                        if(LNamespace(_loc5_).name == param1.name)
                        {
                           _loc4_ = true;
                           break;
                        }
                     }
                  }
               }
               else if(_loc5_ == param1)
               {
                  _loc4_ = true;
                  break;
               }
            }
            return _loc4_;
         });
         if(!contentsMatch)
         {
            throw new Error("Array contents to do not match.");
         }
         return true;
      }
   }
}
