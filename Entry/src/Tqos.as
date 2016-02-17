package
{
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.sendToURL;
   
   public class Tqos
   {
      
      protected static var url:String = "http://ied-tqosweb.qq.com:8001";
       
      protected var cmd:int = 5;
      
      protected var businessID:int = 24561;
      
      protected var qosID:int = 24561;
      
      public var intList:Array;
      
      public var strList:Array;
      
      public function Tqos()
      {
         this.intList = [];
         this.strList = [];
         super();
      }
      
      public function encode() : String
      {
         var _loc1_:Object = {
            "Head":{"Cmd":this.cmd},
            "Body":{"QOSRep":{
               "BusinessID":this.businessID,
               "QosNum":1,
               "QosList":[{
                  "QosID":this.qosID,
                  "AppendDescFlag":2,
                  "AppendDesc":{"Comm":{
                     "IntNum":this.intList.length,
                     "IntList":this.intList,
                     "StrNum":this.strList.length,
                     "StrList":this.strList
                  }}
               }]
            }}
         };
         return JSON.stringify(_loc1_);
      }
      
      public function sendTqos() : void
      {
         var _loc1_:String = this.encode();
         var _loc2_:URLRequest = new URLRequest(url);
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.data = "tqos=" + _loc1_;
         sendToURL(_loc2_);
      }
   }
}
