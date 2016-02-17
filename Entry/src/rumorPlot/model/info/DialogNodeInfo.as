package rumorPlot.model.info
{
   public class DialogNodeInfo
   {
       
      public var id:int;
      
      public var type:int;
      
      public var name:String;
      
      public var dialogInfoVect:Vector.<rumorPlot.model.info.DialogInfo>;
      
      public function DialogNodeInfo()
      {
         super();
      }
      
      public function decode(param1:XML) : void
      {
         var _loc4_:rumorPlot.model.info.DialogInfo = null;
         this.id = param1.@id;
         this.type = param1.@type;
         this.name = param1.@name;
         this.dialogInfoVect = new Vector.<DialogInfo>();
         var _loc2_:XMLList = param1.DialogInfo;
         var _loc3_:int = _loc2_.length();
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc4_ = new rumorPlot.model.info.DialogInfo();
            _loc4_.decode(_loc2_[_loc5_]);
            this.dialogInfoVect.push(_loc4_);
            _loc5_++;
         }
      }
      
      public function encode() : XML
      {
         var _loc1_:XML = <DialogNode/>;
         this.id && (_loc1_.@id = this.id);
         this.type && (_loc1_.@type = this.type);
         this.name && (_loc1_.@name = this.name);
         var _loc2_:int = this.dialogInfoVect?this.dialogInfoVect.length:0;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc1_.appendChild(this.dialogInfoVect[_loc3_].encode());
            _loc3_++;
         }
         return _loc1_;
      }
   }
}
