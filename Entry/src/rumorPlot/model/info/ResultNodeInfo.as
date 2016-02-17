package rumorPlot.model.info
{
   public class ResultNodeInfo
   {
       
      public var id:int;
      
      public var picTip:String;
      
      public var picDesc:String;
      
      public function ResultNodeInfo()
      {
         super();
      }
      
      public function decode(param1:XML) : void
      {
         this.id = param1.@id;
         this.picTip = param1.@picTip;
         this.picDesc = param1.@picDesc;
      }
      
      public function encode() : XML
      {
         var _loc1_:XML = <ResultNode/>;
         this.id && (_loc1_.@id = this.id);
         this.picTip && (_loc1_.@picTip = this.picTip);
         this.picDesc && (_loc1_.@picDesc = this.picDesc);
         return _loc1_;
      }
   }
}
