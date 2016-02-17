package rumorPlot.model.info
{
   public class ConditionInfo
   {
       
      public var id:int;
      
      public var name:String;
      
      public var className:String;
      
      public var paramArg:rumorPlot.model.info.ParamArgInfo;
      
      public function ConditionInfo()
      {
         super();
      }
      
      public function decode(param1:XML) : void
      {
         this.id = param1.@id;
         this.name = param1.@name;
         this.className = param1.@className;
         var _loc2_:XMLList = param1.ParamArg;
         if(_loc2_ && _loc2_.length())
         {
            this.paramArg = new rumorPlot.model.info.ParamArgInfo();
            this.paramArg.decode(_loc2_[0]);
         }
      }
      
      public function update(param1:ConditionInfo) : void
      {
         this.name = param1.name;
         this.className = param1.className;
         if(!this.paramArg && param1.paramArg)
         {
            this.paramArg = new rumorPlot.model.info.ParamArgInfo();
         }
         this.paramArg && this.paramArg.update(param1.paramArg);
      }
      
      public function encode() : XML
      {
         var _loc1_:XML = <ConditionInfo id="" name="" className=""/>;
         _loc1_.@id = this.id;
         _loc1_.@name = this.name;
         _loc1_.@className = this.className;
         if(this.paramArg)
         {
            _loc1_.appendChild(this.paramArg.encode());
         }
         return _loc1_;
      }
   }
}
