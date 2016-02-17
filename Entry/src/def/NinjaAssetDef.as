package def
{
   import majorRole.def.MajorNinjaDef;
   import cfgData.dataStruct.NinjaInfoCFG;
   import user.data.NinjaInfoConfig;
   import bag.utils.BagUtils;
   import com.tencent.morefun.framework.loader.FileManager;
   
   public class NinjaAssetDef
   {
      
      public static const AVATAR_POS_ACTION_NAME:String = "posData";
      
      public static const AVATAR_HEAD_POS_NAME:String = "head";
      
      public static const HEAD_BIG:String = "head_big";
      
      public static const HEAD_SMALL:String = "head_small";
      
      public static const IMAGE:String = "image";
      
      public static const IMAGE_RIGHT:String = "imageRight";
      
      public static const PROPERTY_ICON:String = "propertyIcon";
      
      public static const AVATAR:String = "avatar";
      
      public static const HEAD_WIDE:String = "head_wide";
      
      public static const NINJA_BIG_IMG:String = "ninja_big_img";
      
      public static const NINJA_IMG120:String = "ninja_img120";
      
      public static const LOGIN_FACE_IMG:String = "login_face_img";
      
      public static const NINJA_ICON:String = "ninja_icon";
      
      public static const NINJA_PROPERTY:String = "ninja_property";
      
      public static const ROLE_IDLE:String = "roleIdle";
      
      public static const PREVIEW:String = "preview";
      
      public static const PET_SKILL:String = "pet_skill";
       
      public function NinjaAssetDef()
      {
         super();
      }
      
      public static function isMajor(param1:int) : Boolean
      {
         return MajorNinjaDef.isMajorNinjaId(param1);
      }
      
      public static function getAsset(param1:String, param2:uint, param3:Boolean = false, param4:int = 1) : String
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 13, Size: 13)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
