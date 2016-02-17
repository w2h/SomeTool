package rumorPlot.model.info
{
   public class FavorNodeInfo
   {
       
      public var favorName:String;
      
      public var favorPicTip:String;
      
      public var dialogTitle:String;
      
      public var dialogMsg:String;
      
      public function FavorNodeInfo()
      {
         super();
      }
      
      public function decode(param1:XML) : void
      {
         this.favorName = param1.@favorName;
         this.favorPicTip = param1.@favorPicTip;
         this.dialogTitle = param1.@dialogTitle;
         this.dialogMsg = param1.@dialogMsg;
      }
      
      public function encode() : XML
      {
         var _loc1_:XML = <FavorNode/>;
         this.favorName && (_loc1_.@favorName = this.favorName);
         this.favorPicTip && (_loc1_.@favorPicTip = this.favorPicTip);
         this.dialogTitle && (_loc1_.@dialogTitle = this.dialogTitle);
         this.dialogMsg && (_loc1_.@dialogMsg = this.dialogMsg);
         return _loc1_;
      }
   }
}
