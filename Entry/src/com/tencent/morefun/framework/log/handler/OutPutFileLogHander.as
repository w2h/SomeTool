package com.tencent.morefun.framework.log.handler
{
   import com.tencent.morefun.framework.log.interfaces.ILogHandler;
   import flash.display.Stage;
   import com.tencent.morefun.naruto.util.Base64Encoder;
   import com.tencent.morefun.naruto.util.ext.ToolKit;
   import com.netease.protobuf.Message;
   import flash.utils.ByteArray;
   import flash.utils.describeType;
   import flash.system.Capabilities;
   import flash.net.FileReference;
   import flash.events.KeyboardEvent;
   
   public class OutPutFileLogHander implements ILogHandler
   {
      
      private static var LOG_MAX:int = 10000 * 2;
       
      protected var m_stage:Stage;
      
      protected var keys:String = "";
      
      protected var openKey:String = "";
      
      protected var openKeyLength:int;
      
      private var logs:Array;
      
      private var encoder:Base64Encoder;
      
      private var m_needKey:Array;
      
      public function OutPutFileLogHander(param1:Stage, param2:String)
      {
         this.logs = [];
         this.m_needKey = ["screenResolutionX","screenResolutionY","language","version","os","isDebugger","hasAudio","hasMP3"];
         super();
         this.m_stage = param1;
         this.openKey = param2;
         this.openKeyLength = param2.length;
         this.m_stage.addEventListener(KeyboardEvent.KEY_DOWN,this.down);
      }
      
      public function flush(param1:Array) : void
      {
         if(this.logs.length >= LOG_MAX)
         {
            this.logs.shift();
         }
         this.logs.push(ToolKit.getFormatDate() + "\t\t" + param1.join("  "));
      }
      
      public function flushMessage(param1:Message) : void
      {
         if(this.logs.length >= LOG_MAX)
         {
            this.logs.shift();
         }
         this.logs.push(param1);
      }
      
      public function exportToFile() : void
      {
         var _loc5_:String = null;
         var _loc1_:ByteArray = new ByteArray();
         var _loc2_:XMLList = describeType(Capabilities).accessor;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.length())
         {
            _loc5_ = _loc2_[_loc3_].@name;
            if(this.m_needKey.indexOf(_loc5_) != -1)
            {
               _loc1_.writeUTFBytes(_loc5_ + ":\t" + Capabilities[_loc5_] + "\n");
            }
            _loc3_++;
         }
         _loc1_.writeUTFBytes(this.logs.join("\n"));
         _loc1_.position = 0;
         if(this.encoder == null)
         {
            this.encoder = new Base64Encoder();
         }
         this.encoder.encodeBytes(_loc1_);
         var _loc4_:String = "log(" + ToolKit.getFormatDate(0,"YMDh").replace(" ","") + ").log";
         new FileReference().save(this.encoder.toString(),_loc4_);
         this.encoder.reset();
         _loc1_.clear();
      }
      
      public function exportToBytes() : ByteArray
      {
         var _loc4_:String = null;
         var _loc1_:ByteArray = new ByteArray();
         var _loc2_:XMLList = describeType(Capabilities).accessor;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.length())
         {
            _loc4_ = _loc2_[_loc3_].@name;
            if(this.m_needKey.indexOf(_loc4_) != -1)
            {
               _loc1_.writeUTFBytes(_loc4_ + ":\t" + Capabilities[_loc4_] + "\n");
            }
            _loc3_++;
         }
         _loc1_.writeUTFBytes(this.logs.join("\n"));
         _loc1_.position = 0;
         return _loc1_;
      }
      
      protected function down(param1:KeyboardEvent) : void
      {
         this.keys = this.keys + String.fromCharCode(param1.charCode);
         this.keys = this.keys.substr(-this.openKeyLength);
         if(this.keys == this.openKey)
         {
            this.exportToFile();
         }
      }
      
      public function autoSetNull() : void
      {
         this.m_stage = null;
         this.keys = null;
         this.openKey = null;
      }
   }
}
