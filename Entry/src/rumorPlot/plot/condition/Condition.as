package rumorPlot.plot.condition
{
   import rumorPlot.model.info.ConditionInfo;
   
   public class Condition
   {
       
      protected var conditionInfo:ConditionInfo;
      
      public var nextNode:int;
      
      public function Condition()
      {
         super();
      }
      
      public function init(param1:ConditionInfo) : void
      {
         this.conditionInfo = param1;
      }
      
      public function dispose(param1:Boolean = false) : void
      {
         if(param1)
         {
            this.conditionInfo = null;
         }
      }
      
      public function check() : Boolean
      {
         return true;
      }
   }
}
