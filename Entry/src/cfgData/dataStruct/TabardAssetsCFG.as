package cfgData.dataStruct
{
   public class TabardAssetsCFG
   {
       
      public var id:int;
      
      public var profession:String = "";
      
      public var assets:Array;
      
      public function TabardAssetsCFG()
      {
         this.assets = new Array();
         super();
      }
   }
}
