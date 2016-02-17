package org.as3commons.bytecode.util
{
   import org.as3commons.bytecode.abc.BaseMultiname;
   import org.as3commons.bytecode.abc.enum.NamespaceKind;
   import org.as3commons.bytecode.abc.QualifiedName;
   import org.as3commons.bytecode.abc.MultinameG;
   import org.as3commons.bytecode.abc.enum.BuiltIns;
   import org.as3commons.bytecode.abc.Multiname;
   import org.as3commons.bytecode.abc.LNamespace;
   import org.as3commons.bytecode.abc.NamespaceSet;
   import org.as3commons.lang.StringUtils;
   import org.as3commons.bytecode.emit.enum.MemberVisibility;
   
   public final class MultinameUtil
   {
      
      public static const PROTECTED_SCOPE_NAME:String = "protected:";
      
      public static const PRIVATE_SCOPE_NAME:String = "private:";
      
      public static const DOUBLE_COLON:String = "::";
      
      public static const SINGLE_COLON:String = ":";
      
      public static const DOUBLE_COLON_REGEXP:RegExp = new RegExp("[:]+");
      
      public static const PERIOD:String = ".";
      
      public static const COMMA:String = ",";
      
      public static const FORWARD_SLASH:String = "/";
      
      public static const VECTOR_INDICATOR:String = "<";
      
      public static const ASTERISK:String = "*";
       
      public function MultinameUtil()
      {
         super();
      }
      
      public static function toArgumentMultiName(param1:String, param2:NamespaceKind = null) : BaseMultiname
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:Array = null;
         var _loc8_:uint = 0;
         var _loc9_:QualifiedName = null;
         if(param1.indexOf(VECTOR_INDICATOR) < 0)
         {
            return toQualifiedName(param1,param2);
         }
         var param2:NamespaceKind = param2 || NamespaceKind.PACKAGE_NAMESPACE;
         if(param1.match(DOUBLE_COLON_REGEXP) != null)
         {
            _loc3_ = param1.split(DOUBLE_COLON_REGEXP);
            _loc4_ = String(_loc3_[0]);
            _loc3_ = String(_loc3_[1]).split(PERIOD);
            _loc5_ = _loc3_[0];
            _loc6_ = _loc3_[1];
            _loc6_ = _loc6_.substr(1,_loc6_.length - 2);
            _loc7_ = _loc6_.split(COMMA);
            _loc8_ = 0;
            while(_loc8_ < _loc7_.length)
            {
               _loc7_[_loc8_] = toArgumentMultiName(String(_loc7_[_loc8_]));
               _loc8_++;
            }
         }
         else
         {
            _loc3_ = param1.split(PERIOD);
            _loc6_ = String(_loc3_.pop());
            _loc6_ = _loc6_.substr(1,_loc6_.length - 2);
            _loc7_ = _loc6_.split(COMMA);
            _loc8_ = 0;
            while(_loc8_ < _loc7_.length)
            {
               _loc7_[_loc8_] = toArgumentMultiName(String(_loc7_[_loc8_]));
               _loc8_++;
            }
            _loc5_ = String(_loc3_.pop());
            _loc4_ = _loc3_.join(PERIOD);
         }
         _loc9_ = new QualifiedName(_loc5_,toLNamespace(_loc4_ + PERIOD + _loc5_,param2));
         return new MultinameG(_loc9_,_loc7_);
      }
      
      public static function toQualifiedName(param1:String, param2:NamespaceKind = null, param3:String = null) : QualifiedName
      {
         var _loc4_:QualifiedName = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var param2:NamespaceKind = param2 || NamespaceKind.PACKAGE_NAMESPACE;
         switch(param1)
         {
            case BuiltIns.OBJECT.fullName:
               _loc4_ = BuiltIns.OBJECT;
               break;
            case BuiltIns.ANY.fullName:
               _loc4_ = BuiltIns.ANY;
               break;
            case BuiltIns.BOOLEAN.fullName:
               _loc4_ = BuiltIns.BOOLEAN;
               break;
            case BuiltIns.VOID.fullName:
               _loc4_ = BuiltIns.VOID;
               break;
            case BuiltIns.DICTIONARY.fullName:
               _loc4_ = BuiltIns.DICTIONARY;
               break;
            case BuiltIns.FUNCTION.fullName:
               _loc4_ = BuiltIns.FUNCTION;
               break;
            case BuiltIns.NUMBER.fullName:
               _loc4_ = BuiltIns.NUMBER;
               break;
            case BuiltIns.STRING.fullName:
               _loc4_ = BuiltIns.STRING;
               break;
            default:
               if(param1.match(DOUBLE_COLON_REGEXP) != null)
               {
                  _loc5_ = param1.split(DOUBLE_COLON_REGEXP);
                  _loc6_ = _loc5_[0];
                  _loc7_ = _loc5_[1];
               }
               else
               {
                  _loc5_ = param1.split(PERIOD);
                  _loc7_ = String(_loc5_.pop());
                  _loc6_ = _loc5_.join(PERIOD);
               }
               _loc4_ = new QualifiedName(_loc7_,toLNamespace(param1,param2,param3));
         }
         return _loc4_;
      }
      
      public static function toMultiName(param1:String, param2:NamespaceKind = null) : Multiname
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var param2:NamespaceKind = param2 || NamespaceKind.PACKAGE_NAMESPACE;
         if(param1.match(DOUBLE_COLON_REGEXP) != null)
         {
            _loc3_ = param1.split(DOUBLE_COLON_REGEXP);
            _loc4_ = _loc3_[1];
         }
         else
         {
            _loc3_ = param1.split(PERIOD);
            _loc4_ = String(_loc3_.pop());
         }
         var _loc5_:LNamespace = toLNamespace(param1,param2);
         var _loc6_:NamespaceSet = new NamespaceSet([_loc5_]);
         return new Multiname(_loc4_,_loc6_);
      }
      
      public static function toLNamespace(param1:String, param2:NamespaceKind, param3:String = null) : LNamespace
      {
         var _loc4_:LNamespace = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         switch(param1)
         {
            case BuiltIns.OBJECT.fullName:
               _loc4_ = BuiltIns.OBJECT.nameSpace;
               break;
            case BuiltIns.BOOLEAN.fullName:
               _loc4_ = BuiltIns.BOOLEAN.nameSpace;
               break;
            case BuiltIns.ANY.fullName:
               _loc4_ = BuiltIns.ANY.nameSpace;
               break;
            case BuiltIns.VOID.fullName:
               _loc4_ = BuiltIns.VOID.nameSpace;
               break;
            case BuiltIns.DICTIONARY.fullName:
               _loc4_ = BuiltIns.DICTIONARY.nameSpace;
               break;
            case BuiltIns.FUNCTION.fullName:
               _loc4_ = BuiltIns.FUNCTION.nameSpace;
               break;
            case BuiltIns.NUMBER.fullName:
               _loc4_ = BuiltIns.NUMBER.nameSpace;
               break;
            case BuiltIns.STRING.fullName:
               _loc4_ = BuiltIns.STRING.nameSpace;
               break;
            default:
               if(param1.match(DOUBLE_COLON_REGEXP) != null)
               {
                  _loc5_ = param1.split(DOUBLE_COLON_REGEXP);
                  _loc6_ = _loc5_[0];
                  _loc7_ = _loc5_[1];
               }
               else
               {
                  _loc5_ = param1.split(PERIOD);
                  _loc7_ = String(_loc5_.pop());
                  _loc6_ = _loc5_.join(PERIOD);
               }
               if(param2 == NamespaceKind.PACKAGE_NAMESPACE)
               {
                  _loc4_ = new LNamespace(param2,_loc6_);
               }
               else if(param3 == null)
               {
                  _loc4_ = new LNamespace(param2,_loc6_ + SINGLE_COLON + _loc7_);
               }
               else
               {
                  _loc4_ = new LNamespace(param2,param3);
               }
         }
         return _loc4_;
      }
      
      public static function extractPackageName(param1:String) : String
      {
         var _loc3_:* = 0;
         var _loc2_:Array = param1.match(MultinameUtil.DOUBLE_COLON_REGEXP);
         if(_loc2_ != null)
         {
            return param1.split(MultinameUtil.DOUBLE_COLON_REGEXP)[0];
         }
         _loc3_ = param1.lastIndexOf(MultinameUtil.PERIOD);
         return param1.substr(0,_loc3_);
      }
      
      public static function convertToQualifiedName(param1:BaseMultiname) : QualifiedName
      {
         var _loc3_:Multiname = null;
         if(param1 is QualifiedName)
         {
            return param1 as QualifiedName;
         }
         var _loc2_:QualifiedName = null;
         if(param1 is Multiname)
         {
            _loc3_ = param1 as Multiname;
            if(_loc3_.namespaceSet.namespaces.length == 1)
            {
               _loc2_ = new QualifiedName(_loc3_.name,_loc3_.namespaceSet.namespaces[0]);
            }
         }
         else if(param1 is MultinameG)
         {
            _loc2_ = (param1 as MultinameG).qualifiedName;
         }
         return _loc2_;
      }
      
      public static function extractInterfaceScopeFromFullName(param1:String) : String
      {
         if(!StringUtils.hasText(param1))
         {
            return "";
         }
         var _loc2_:Array = param1.split(PERIOD);
         if(_loc2_.length > 1)
         {
            _loc2_.pop();
            return _loc2_.join(PERIOD);
         }
         return "";
      }
      
      public static function getNamespaceKind(param1:MemberVisibility) : NamespaceKind
      {
         switch(param1)
         {
            case MemberVisibility.PUBLIC:
               return NamespaceKind.PACKAGE_NAMESPACE;
            case MemberVisibility.PROTECTED:
               return NamespaceKind.PROTECTED_NAMESPACE;
            case MemberVisibility.PRIVATE:
               return NamespaceKind.PRIVATE_NAMESPACE;
            case MemberVisibility.NAMESPACE:
               return NamespaceKind.NAMESPACE;
            default:
               return NamespaceKind.PACKAGE_NAMESPACE;
         }
      }
      
      public static function createScopeNameFromQualifiedName(param1:QualifiedName) : String
      {
         var _loc2_:String = null;
         switch(param1.nameSpace.kind)
         {
            case NamespaceKind.PROTECTED_NAMESPACE:
               _loc2_ = PROTECTED_SCOPE_NAME;
               break;
            case NamespaceKind.PRIVATE_NAMESPACE:
               _loc2_ = PRIVATE_SCOPE_NAME;
               break;
            case NamespaceKind.NAMESPACE:
               _loc2_ = param1.nameSpace.name + MultinameUtil.SINGLE_COLON;
               break;
            case MemberVisibility.INTERNAL:
               _loc2_ = param1.fullName.split(MultinameUtil.SINGLE_COLON)[0] + MultinameUtil.SINGLE_COLON;
               break;
         }
         return _loc2_;
      }
   }
}
