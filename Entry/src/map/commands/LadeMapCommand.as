package map.commands
{
   import cfgData.dataStruct.SceneCFG;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.ByteArray;
   import flash.display.Bitmap;
   import com.tencent.morefun.framework.base.Command;
   
   public class LadeMapCommand extends BaseMapCommand
   {
       
      public var sceneInfo:SceneCFG;
      
      public var pos:Point;
      
      public var mapBgImgInfos:Dictionary;
      
      public var mapMgImgInfos:Dictionary;
      
      public var mapFgImgInfos:Dictionary;
      
      public var mapData:ByteArray;
      
      public var shrinkBitmap:Bitmap;
      
      public var alphaBitmap:Bitmap;
      
      public function LadeMapCommand(param1:SceneCFG, param2:Point, param3:Dictionary, param4:Dictionary, param5:Dictionary, param6:ByteArray, param7:Bitmap, param8:Bitmap)
      {
         super(Command.FULL_SCREEN | Command.TOTAL_FILE);
         this.sceneInfo = param1;
         this.pos = param2;
         this.mapBgImgInfos = param3;
         this.mapMgImgInfos = param4;
         this.mapFgImgInfos = param5;
         this.mapData = param6;
         this.shrinkBitmap = param7;
         this.alphaBitmap = param8;
      }
   }
}
