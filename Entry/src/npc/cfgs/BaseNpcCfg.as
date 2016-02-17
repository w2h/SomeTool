package npc.cfgs
{
   import flash.geom.Matrix;
   import flash.utils.Dictionary;
   import flash.geom.Point;
   
   public class BaseNpcCfg
   {
       
      public var xml:XML;
      
      public var id:uint;
      
      public var name:String;
      
      public var title:String;
      
      public var roleId:int;
      
      public var type:int;
      
      public var res:String;
      
      public var dialogueType:int;
      
      public var dialogueRate:int;
      
      public var dialogPossibility:int;
      
      public var dialogTextList:Array;
      
      public var sightRange:int;
      
      public var moveRange:int;
      
      public var moveRate:Number;
      
      public var matrix:Matrix;
      
      public var idleActionName:String;
      
      public var listId:uint;
      
      public var imgPosMap:Dictionary;
      
      public var canMove:Boolean;
      
      public var movePath:Array;
      
      public var seekPoint:Point;
      
      public var destPoint:Point;
      
      public var destPixelPoint:Point;
      
      public var startImgX:int;
      
      public var endImgX:int;
      
      public var startImgY:int;
      
      public var endImgY:int;
      
      public var cfgStartImgX:int;
      
      public var cfgEndImgX:int;
      
      public var cfgStartImgY:int;
      
      public var cfgEndImgY:int;
      
      public var subLayerIndex:int;
      
      public function BaseNpcCfg()
      {
         this.dialogTextList = [];
         this.imgPosMap = new Dictionary();
         this.movePath = [];
         super();
      }
      
      public function parse(param1:XML) : void
      {
         this.xml = param1;
         this.type = param1.@npcType;
         this.id = param1.@id;
         this.roleId = param1.@roleId;
         this.res = param1.@res;
         this.listId = param1.@listId;
         this.canMove = String(param1.@canMove) == "true";
         var _loc2_:Array = String(param1.@destPoint).split(",");
         this.destPoint = new Point(_loc2_[0],_loc2_[1]);
         if(param1.hasOwnProperty("@destPixelPoint"))
         {
            _loc2_ = String(param1.@destPixelPoint).split(",");
            this.destPixelPoint = new Point(_loc2_[0],_loc2_[1]);
         }
         if(param1.hasOwnProperty("@seekPoint"))
         {
            _loc2_ = String(param1.@seekPoint).split(",");
            this.seekPoint = new Point(_loc2_[0],_loc2_[1]);
         }
         else
         {
            this.seekPoint = this.destPixelPoint;
         }
         _loc2_ = String(param1.@movePath).split(",");
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.length)
         {
            this.movePath.push(new Point(_loc2_[_loc3_],_loc2_[_loc3_ + 1]));
            _loc3_ = _loc3_ + 2;
         }
         if(param1.hasOwnProperty("@matrix"))
         {
            _loc2_ = String(param1.@matrix).split(",");
            this.matrix = new Matrix(_loc2_[0],_loc2_[1],_loc2_[2],_loc2_[3]);
         }
         else
         {
            this.matrix = new Matrix();
         }
         this.startImgX = param1.@startImgX;
         this.endImgX = param1.@endImgX;
         this.startImgY = param1.@startImgY;
         this.endImgY = param1.@endImgY;
         this.cfgStartImgX = param1.@startImgX;
         this.cfgEndImgX = param1.@endImgX;
         this.cfgStartImgY = param1.@startImgY;
         this.cfgEndImgY = param1.@endImgY;
         this.idleActionName = param1.@idleActionName;
         this.dialogueType = param1.@dialogueType;
         this.dialogueRate = param1.@dialogueRate;
         this.dialogPossibility = param1.@dialogPossibility;
         this.subLayerIndex = param1.hasOwnProperty("@subLayerIndex")?param1.@subLayerIndex:1;
         var _loc4_:int = 1;
         while(_loc4_ <= 5)
         {
            if(param1.hasOwnProperty("@dialogText" + _loc4_) && String(param1["@dialogText" + _loc4_]) != "")
            {
               this.dialogTextList.push(String(param1["@dialogText" + _loc4_]));
            }
            _loc4_++;
         }
      }
   }
}
