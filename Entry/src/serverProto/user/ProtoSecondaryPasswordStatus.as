package serverProto.user
{
   public final class ProtoSecondaryPasswordStatus
   {
      
      public static const PROTO_SECONDARY_PASSWORD_STATUS_NONE:int = 1;
      
      public static const PROTO_SECONDARY_PASSWORD_STATUS_SET:int = 2;
      
      public static const PROTO_SECONDARY_PASSWORD_STATUS_FORGETTING:int = 3;
      
      public static const PROTO_SECONDARY_PASSWORD_STATUS_VALID:int = 4;
      
      public static const PROTO_SECONDARY_PASSWORD_STATUS_PASSWD_TRY_ULTIMATE:int = 5;
       
      public function ProtoSecondaryPasswordStatus()
      {
         super();
      }
   }
}
