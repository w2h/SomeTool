package map.data
{
   import flash.display.Bitmap;
   
   public class Buildings
   {
       
      public var id:int;
      
      public var xp:int;
      
      public var yp:int;
      
      public var imgId:int;
      
      public var imgRelativePath:String;
      
      public var imgBitmap:Bitmap;
      
      public function Buildings(param1:int)
      {
         super();
         this.id = param1;
      }
   }
}
