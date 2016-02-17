package gvg.data
{
   import com.netease.protobuf.UInt64;
   
   public class GvgGuildData
   {
       
      public var id:UInt64;
      
      public var name:String;
      
      public var score:int;
      
      public var level:int;
      
      public var fightCap:int;
      
      public var index:int;
      
      public function GvgGuildData()
      {
         super();
      }
   }
}
