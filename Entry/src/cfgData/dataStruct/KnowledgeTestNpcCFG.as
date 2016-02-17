package cfgData.dataStruct
{
   public class KnowledgeTestNpcCFG
   {
       
      public var id:int;
      
      public var name:String = "";
      
      public var words:Array;
      
      public var prize:int;
      
      public function KnowledgeTestNpcCFG()
      {
         this.words = new Array();
         super();
      }
   }
}
