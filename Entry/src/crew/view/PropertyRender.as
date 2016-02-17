package crew.view
{
   import flash.display.Sprite;
   import flash.filters.GlowFilter;
   import flash.filters.BitmapFilterQuality;
   import com.greensock.TweenLite;
   
   public class PropertyRender extends Sprite
   {
      
      private static const maxLineLength:int = 45;
      
      private static const sinArr:Array = [Math.sin(0.5 * Math.PI),Math.sin(0.9 * Math.PI),Math.sin(1.3 * Math.PI),Math.sin(1.7 * Math.PI),Math.sin(2.1 * Math.PI)];
      
      private static const cosArr:Array = [Math.cos(0.5 * Math.PI),Math.cos(0.9 * Math.PI),Math.cos(1.3 * Math.PI),Math.cos(1.7 * Math.PI),Math.cos(2.1 * Math.PI)];
      
      private static const drawCommand:Vector.<int> = new <int>[1,2,2,2,2];
      
      private static const strengthenLevelToBgColor:Array = [3381504,33492,33492,33492,33492,11233023,11233023,11233023,11233023,16750848,16750848,16750848,16750848,16750848,16019822,16019822,16019822,16019822,16019822,16019822,16019822];
      
      private static const strengthenLevelToFilterColor:Array = [6736896,50943,50943,50943,50943,12290303,12290303,12290303,12290303,16763904,16763904,16763904,16763904,16763904,16533833,16533833,16533833,16533833,16533833,16533833,16533833];
       
      private var view:Sprite;
      
      private var viewLine:Sprite;
      
      private var lengthArr:Array;
      
      private var coord:Vector.<Number>;
      
      private var bgColor:uint;
      
      private var filterColor:uint;
      
      public function PropertyRender()
      {
         this.lengthArr = [0,0,0,0,0];
         this.coord = new Vector.<Number>(10,true);
         super();
         this.view = new Sprite();
         this.viewLine = new Sprite();
         this.viewLine.filters = [new GlowFilter(6737100,1,5,5,2.22,BitmapFilterQuality.HIGH,true,true)];
         addChildAt(this.view,0);
         addChildAt(this.viewLine,1);
      }
      
      public function setProperty(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int) : void
      {
         var _loc9_:Number = Math.min((param1 - param6) / (param7 - param6) * maxLineLength,maxLineLength);
         var _loc10_:Number = Math.min((param2 - param6) / (param7 - param6) * maxLineLength,maxLineLength);
         var _loc11_:Number = Math.min((param3 - param6) / (param7 - param6) * maxLineLength,maxLineLength);
         var _loc12_:Number = Math.min((param4 - param6) / (param7 - param6) * maxLineLength,maxLineLength);
         var _loc13_:Number = Math.min((param5 - param6) / (param7 - param6) * maxLineLength,maxLineLength);
         this.bgColor = strengthenLevelToBgColor[param8];
         this.filterColor = strengthenLevelToFilterColor[param8];
         this.viewLine.filters = [];
         this.viewLine.filters = [new GlowFilter(this.filterColor,1,5,5,2.22,BitmapFilterQuality.HIGH,true,true)];
         TweenLite.killTweensOf(this);
         TweenLite.to(this,0.4,{
            "lifeApLineLength":_loc9_,
            "attackApLineLength":_loc10_,
            "defenseApLineLength":_loc11_,
            "ninpApLineLength":_loc12_,
            "resistApLineLength":_loc13_
         });
      }
      
      private function updateView() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            this.coord[_loc1_ * 2] = int(this.lengthArr[_loc1_] * cosArr[_loc1_]);
            this.coord[_loc1_ * 2 + 1] = -int(this.lengthArr[_loc1_] * sinArr[_loc1_]);
            _loc1_++;
         }
         this.view.graphics.clear();
         this.view.graphics.beginFill(this.bgColor,0.59);
         this.view.graphics.drawPath(drawCommand,this.coord);
         this.view.graphics.endFill();
         this.viewLine.graphics.clear();
         this.viewLine.graphics.beginFill(this.bgColor,0.97);
         this.viewLine.graphics.drawPath(drawCommand,this.coord);
         this.viewLine.graphics.endFill();
      }
      
      public function set lifeApLineLength(param1:Number) : void
      {
         this.lengthArr[0] = param1;
         this.updateView();
      }
      
      public function set attackApLineLength(param1:Number) : void
      {
         this.lengthArr[1] = param1;
         this.updateView();
      }
      
      public function set defenseApLineLength(param1:Number) : void
      {
         this.lengthArr[2] = param1;
         this.updateView();
      }
      
      public function set ninpApLineLength(param1:Number) : void
      {
         this.lengthArr[3] = param1;
         this.updateView();
      }
      
      public function set resistApLineLength(param1:Number) : void
      {
         this.lengthArr[4] = param1;
         this.updateView();
      }
      
      public function get lifeApLineLength() : Number
      {
         return this.lengthArr[0];
      }
      
      public function get attackApLineLength() : Number
      {
         return this.lengthArr[1];
      }
      
      public function get defenseApLineLength() : Number
      {
         return this.lengthArr[2];
      }
      
      public function get ninpApLineLength() : Number
      {
         return this.lengthArr[3];
      }
      
      public function get resistApLineLength() : Number
      {
         return this.lengthArr[4];
      }
      
      public function destroy() : void
      {
         TweenLite.killTweensOf(this);
         this.view.parent && this.view.parent.removeChild(this.view);
         this.view.removeChildren();
         this.view = null;
         this.viewLine.parent && this.viewLine.parent.removeChild(this.viewLine);
         this.viewLine.removeChildren();
         this.viewLine = null;
      }
   }
}
