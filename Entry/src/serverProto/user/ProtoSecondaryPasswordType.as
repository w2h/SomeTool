package serverProto.user
{
   public final class ProtoSecondaryPasswordType
   {
      
      public static const PROTO_SECONDARY_PASSWORD_TYPE_OPEN:int = 1;
      
      public static const PROTO_SECONDARY_PASSWORD_TYPE_SET:int = 2;
      
      public static const PROTO_SECONDARY_PASSWORD_TYPE_CANCEL:int = 3;
      
      public static const PROTO_SECONDARY_PASSWORD_TYPE_VERIFY:int = 4;
      
      public static const PROTO_SECONDARY_PASSWORD_TYPE_CHANGE:int = 5;
      
      public static const PROTO_SECONDARY_PASSWORD_TYPE_FORGET:int = 6;
      
      public static const PROTO_SECONDARY_PASSWORD_TYPE_CANCEL_FORGET:int = 7;
       
      public function ProtoSecondaryPasswordType()
      {
         super();
      }
   }
}
