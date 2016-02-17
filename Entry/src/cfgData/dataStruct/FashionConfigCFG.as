package cfgData.dataStruct
{
   public class FashionConfigCFG
   {
       
      public var id:uint;
      
      public var name:String = "";
      
      public var career:int;
      
      public var reActive:int;
      
      public var composeItemId:int;
      
      public var composeItemNum:int;
      
      public var canStrong:int;
      
      public var strongItemId:int;
      
      public var swfname:Array;
      
      public var infoTypes:Array;
      
      public var numArr:Array;
      
      public var infoArr:Array;
      
      public var otherInfoArr:Array;
      
      public var cdArr:Array;
      
      public function FashionConfigCFG()
      {
         this.swfname = new Array();
         this.infoTypes = new Array();
         this.numArr = new Array();
         this.infoArr = new Array();
         this.otherInfoArr = new Array();
         this.cdArr = new Array();
         super();
      }
   }
}
