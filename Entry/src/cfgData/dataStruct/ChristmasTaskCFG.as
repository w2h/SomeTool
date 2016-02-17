package cfgData.dataStruct
{
   public class ChristmasTaskCFG
   {
       
      public var id:uint;
      
      public var name:String = "";
      
      public var href:String = "";
      
      public var bonus:Array;
      
      public function ChristmasTaskCFG()
      {
         this.bonus = new Array();
         super();
      }
   }
}
