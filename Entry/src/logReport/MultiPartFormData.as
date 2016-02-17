package logReport
{
   import flash.utils.ByteArray;
   
   public class MultiPartFormData
   {
      
      public static var Boundary:String = "------WebKitFormBoundary9reDs4M9jVgBtvcB";
       
      private var fieldName:String = "Content-Disposition: form-data; name=\"XXXX\"";
      
      private var fieldValue:String = "XXXX";
      
      private var fileField:String = "Content-Disposition: form-data; name=\"XXXX\"; filename=\"XXXXXXXX\"";
      
      private var fileContentType:String = "Content-Type: XXXX";
      
      private var formData:ByteArray;
      
      public function MultiPartFormData()
      {
         super();
         this.formData = new ByteArray();
      }
      
      public function AddFormField(param1:String, param2:String) : void
      {
         var _loc3_:String = this.fieldName;
         var _loc4_:String = this.fieldValue;
         _loc3_ = _loc3_.replace("XXXX",param1);
         _loc4_ = _loc4_.replace("XXXX",param2);
         this.formData.writeMultiByte("--" + Boundary + "\r\n","UTF-8");
         this.formData.writeMultiByte(_loc3_ + "\r\n\r\n","UTF-8");
         this.formData.writeMultiByte(_loc4_ + "\r\n","UTF-8");
      }
      
      public function AddFile(param1:String, param2:String, param3:ByteArray, param4:String) : void
      {
         var _loc5_:String = this.fileField;
         var _loc6_:String = this.fileContentType;
         _loc5_ = _loc5_.replace("XXXX",param1);
         _loc5_ = _loc5_.replace("XXXXXXXX",param2);
         _loc6_ = _loc6_.replace("XXXX",param4);
         this.formData.writeMultiByte("--" + Boundary + "\r\n","UTF-8");
         this.formData.writeMultiByte(_loc5_ + "\r\n","UTF-8");
         this.formData.writeMultiByte(_loc6_ + "\r\n\r\n","UTF-8");
         this.formData.writeBytes(param3,0,param3.length);
         this.formData.writeMultiByte("\r\n","UTF-8");
      }
      
      public function AddStreamFile(param1:String, param2:String, param3:ByteArray) : void
      {
         this.AddFile(param1,param2,param3,"application/octet-stream");
      }
      
      public function PrepareFormData() : void
      {
         this.formData.writeMultiByte("--" + Boundary + "--","UTF-8");
      }
      
      public function GetFormData() : ByteArray
      {
         return this.formData;
      }
   }
}
