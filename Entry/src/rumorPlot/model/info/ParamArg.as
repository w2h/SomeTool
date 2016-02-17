package rumorPlot.model.info
{
   public class ParamArg
   {
       
      public var value:String;
      
      public var info:String;
      
      public var tips:String;
      
      public var type:int;
      
      public function ParamArg()
      {
         super();
      }
      
      public function decode(param1:XML) : void
      {
         this.value = param1.@value;
         this.info = param1.@info;
         this.tips = param1.@tips;
         this.type = int(param1.@type);
      }
      
      public function update(param1:ParamArg) : void
      {
         this.info = param1.info;
         this.tips = param1.tips;
         this.type = param1.type;
      }
      
      public function copyBaseInfo(param1:ParamArg) : void
      {
         this.value = param1.value;
      }
      
      public function encode() : XML
      {
         var _loc1_:XML = <Arg/>;
         this.value && (_loc1_.@value = this.value);
         this.info && (_loc1_.@info = this.info);
         this.tips && (_loc1_.@tips = this.tips);
         this.type && (_loc1_.@type = this.type);
         return _loc1_;
      }
   }
}
