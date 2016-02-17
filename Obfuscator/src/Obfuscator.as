package
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import com.bit101.components.CheckBox;
   import com.bit101.components.NumericStepper;
   import com.bit101.components.List;
   import com.bit101.components.ComboBox;
   import com.bit101.components.PushButton;
   import com.bit101.components.ProgressBar;
   import flash.events.KeyboardEvent;
   import flash.geom.Matrix;
   import flash.events.Event;
   import flash.utils.setTimeout;
   import flash.net.FileReference;
   import flash.display.*;
   import com.bit101.components.Label;
   import com.bit101.components.Style;
   
   public class Obfuscator extends Sprite
   {
       
      public var hg:BitmapData;
      
      public var iswf:ByteArray;
      
      public var oswf:ByteArray;
      
      public var inames:Array;
      
      public var ipnames:Dictionary;
      
      public var excluded:Vector.<CheckBox>;
      
      public var minchars:NumericStepper;
      
      public var replacements:List;
      
      public var method:ComboBox;
      
      public var remover:PushButton;
      
      public var progress:ProgressBar;
      
      private var block:Sprite;
      
      public function Obfuscator()
      {
         var dobj:DisplayObject = null;
         this.excluded = new Vector.<CheckBox>();
         super();
         var HG:Class = Obfuscator_HG;
         (this.hg = new HG().bitmapData).floodFill(0,0,1073741824);
         stage.align = "TL";
         stage.scaleMode = "noScale";
         new PushButton(this,10,10,"LOAD SWF",this.loadSWFFile);
         new PushButton(this,120,10,"OBFUSCATE",this.obfuscate);
         new PushButton(this,230,10,"SAVE SWF",this.saveSWFFile);
         new Label(this,10,65,"Replace identifiers that are at least                   characters, excluding:");
         with(this.minchars = new NumericStepper(this,165,66,this.createReplaceList))
         {
            
            minimum = 5;
            maximum = 15;
            value = 8;
            width = 50;
         }
         new CheckBox(this,10,90,"FP/AIR",this.createReplaceList).selected = true;
         new CheckBox(this,60,90,"Public identifiers",this.createReplaceList);
         new CheckBox(this,150,90,"Flex",this.createReplaceList);
         new CheckBox(this,190,90,"MochiAds sensitive stuff",this.createReplaceList).selected = true;
         new Label(this,10,111,"with:");
         this.replacements = new List(this,10,145);
         this.replacements.width = 320;
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.scrollTheList);
         this.remover = new PushButton(this,10,1234,"remove selected replacement from list before obfuscation",this.removeSelectedReplacement);
         this.remover.width = 320;
         this.method = new ComboBox(this,40,110,"",[{"label":"random word combinations                                                            "},{"label":"random ASCII characters                                                             "},{"label":"random garbage (not even valid UTF-8)                                               "}]);
         this.method.addEventListener(Event.SELECT,this.createReplaceList);
         this.method.numVisibleItems = this.method.items.length;
         this.method.selectedIndex = 0;
         this.method.width = 290;
         var i:int = 0;
         while(i < numChildren)
         {
            dobj = getChildAt(i);
            if(dobj is CheckBox)
            {
               this.excluded.push(dobj as CheckBox);
            }
            i++;
         }
         new Label(this,10,40,"Obfuscation progress:");
         this.progress = new ProgressBar(this,110,45);
         this.progress.width = 330 - this.progress.x;
         Style.PROGRESS_BAR = 65407;
         stage.addEventListener(Event.RESIZE,this.onResize);
         this.onResize();
      }
      
      private function scrollTheList(param1:KeyboardEvent) : void
      {
         var _loc2_:* = 0;
         if(param1.target == stage && this.replacements.selectedIndex > -1)
         {
            switch(param1.keyCode)
            {
               case 38:
                  this.replacements.selectedIndex = Math.max(0,this.replacements.selectedIndex - 1);
                  this.replacements.scrollToSelection();
                  break;
               case 40:
                  _loc2_ = this.replacements.items.length - 1;
                  this.replacements.selectedIndex = Math.min(_loc2_,this.replacements.selectedIndex + 1);
                  this.replacements.scrollToSelection();
                  break;
            }
         }
      }
      
      private function addBlock() : void
      {
         if(this.block == null)
         {
            addChild(this.block = new Sprite());
            this.block.graphics.beginBitmapFill(this.hg,new Matrix(1,0,0,1,stage.stageWidth - this.hg.width >> 1,stage.stageHeight - this.hg.height >> 1),false);
            this.block.graphics.drawRect(0,0,stage.stageWidth,stage.stageHeight);
            this.block.graphics.endFill();
         }
      }
      
      private function removeBlock() : void
      {
         if(this.block)
         {
            removeChild(this.block);
            this.block.graphics.clear();
            this.block = null;
         }
      }
      
      private function onResize(param1:Event = null) : void
      {
         this.remover.y = stage.stageHeight - this.remover.height - 10;
         this.replacements.height = this.remover.y - this.replacements.y - 10;
         if(this.block)
         {
            this.removeBlock();
            this.addBlock();
         }
      }
      
      public function loadSWFFile(... rest) : void
      {
         this.addBlock();
         new FileLoader(this.parseSWFFile);
      }
      
      public function parseSWFFile(param1:ByteArray) : void
      {
         var _loc2_:String = null;
         if(param1 == null)
         {
            this.removeBlock();
            return;
         }
         param1.position = 0;
         if(param1.readMultiByte(3,"us-ascii") == "CWS")
         {
            this.iswf = this.decompress(param1);
         }
         else
         {
            this.iswf = param1;
         }
         this.inames = SWFUtils.collectNames(this.iswf,1);
         this.ipnames = new Dictionary();
         for each(_loc2_ in SWFUtils.collectNames(this.iswf,1,true))
         {
            this.ipnames[_loc2_] = true;
         }
         this.createReplaceList();
      }
      
      public function createReplaceList(... rest) : void
      {
         if(this.iswf == null)
         {
            return;
         }
         this.addBlock();
         setTimeout(this.createReplaceList2,42);
      }
      
      private function createReplaceList2() : void
      {
         var _loc1_:INameGenerator = null;
         var _loc9_:String = null;
         switch(this.method.selectedIndex)
         {
            case 0:
               _loc1_ = new ReadableNameGenerator();
               break;
            case 1:
               _loc1_ = new RandomStringGenerator(33,126);
               break;
            case 2:
               _loc1_ = new RandomStringGenerator();
               break;
         }
         var _loc2_:* = 0;
         var _loc3_:* = 1;
         var _loc4_:* = 2;
         var _loc5_:* = 3;
         var _loc6_:Array = [];
         var _loc7_:* = 0;
         var _loc8_:int = this.minchars.value;
         while(_loc7_ < this.inames.length)
         {
            _loc9_ = this.inames[_loc7_];
            if(_loc9_.length >= _loc8_)
            {
               if(!(this.excluded[_loc3_].selected && this.isInDictionary(_loc9_,this.ipnames)))
               {
                  if(!(this.excluded[_loc2_].selected && this.isInDictionary(_loc9_,SWFUtils.AIR)))
                  {
                     if(!(this.excluded[_loc4_].selected && this.isInDictionary(_loc9_,SWFUtils.FLEX)))
                     {
                        if(!(this.excluded[_loc5_].selected && this.isInDictionary(_loc9_,SWFUtils.MOCHI)))
                        {
                           _loc6_.push(new Replacement(_loc9_,_loc1_.generate(_loc9_.length,_loc9_.indexOf(".") > 0)));
                        }
                     }
                  }
               }
            }
            _loc7_++;
         }
         this.replacements.items = _loc6_;
         this.removeBlock();
      }
      
      private function isInDictionary(param1:String, param2:Dictionary) : Boolean
      {
         var _loc3_:String = null;
         if(param2[param1])
         {
            return true;
         }
         for(_loc3_ in param2)
         {
            if(_loc3_.indexOf(param1) > -1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function removeSelectedReplacement(... rest) : void
      {
         if(this.replacements.selectedIndex >= 0)
         {
            this.replacements.removeItemAt(this.replacements.selectedIndex);
         }
      }
      
      private function obfuscate(... rest) : void
      {
         if(this.iswf == null)
         {
            return;
         }
         this.addBlock();
         setTimeout(this.obfuscate2,42);
      }
      
      private function obfuscate2() : void
      {
         this.oswf = new ByteArray();
         this.oswf.writeBytes(this.iswf,0,this.iswf.length);
         if(this.replacements.items.length > 0)
         {
            this.progress.value = 0.05;
            new Replacer(this.replacements.items,this.oswf,this.obfuscate3,this.obfuscate4);
         }
         else
         {
            this.obfuscate4();
         }
      }
      
      private function obfuscate3(param1:Number) : void
      {
         this.progress.value = 0.05 + param1 * 0.95;
      }
      
      private function obfuscate4() : void
      {
         this.progress.value = 0;
         this.removeBlock();
      }
      
      private function saveSWFFile(... rest) : void
      {
         if(this.oswf)
         {
            new FileReference().save(this.compress(this.oswf),"obfuscated.swf");
         }
      }
      
      private function compress(param1:ByteArray) : ByteArray
      {
         var _loc2_:ByteArray = new ByteArray();
         var _loc3_:ByteArray = new ByteArray();
         var _loc4_:ByteArray = new ByteArray();
         _loc2_.writeBytes(param1,3,5);
         _loc3_.writeBytes(param1,8);
         _loc3_.compress();
         _loc4_.writeMultiByte("CWS","us-ascii");
         _loc4_.writeBytes(_loc2_);
         _loc4_.writeBytes(_loc3_);
         return _loc4_;
      }
      
      private function decompress(param1:ByteArray) : ByteArray
      {
         var _loc2_:ByteArray = new ByteArray();
         var _loc3_:ByteArray = new ByteArray();
         var _loc4_:ByteArray = new ByteArray();
         _loc2_.writeBytes(param1,3,5);
         _loc3_.writeBytes(param1,8);
         _loc3_.uncompress();
         _loc4_.writeMultiByte("FWS","us-ascii");
         _loc4_.writeBytes(_loc2_);
         _loc4_.writeBytes(_loc3_);
         return _loc4_;
      }
   }
}

class Replacement
{
    
   public var iname:String;
   
   public var oname:String;
   
   function Replacement(param1:String, param2:String)
   {
      super();
      this.iname = param1;
      this.oname = param2;
   }
   
   public function get label() : String
   {
      return this.iname + " => " + this.oname;
   }
}

import flash.utils.ByteArray;
import flash.utils.getTimer;
import flash.utils.setTimeout;

class Replacer
{
    
   private var bytes:ByteArray;
   
   private var tree:Object;
   
   private var progress:Function;
   
   private var over:Function;
   
   function Replacer(param1:Array, param2:ByteArray, param3:Function, param4:Function)
   {
      var _loc6_:Replacement = null;
      var _loc7_:Object = null;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      super();
      this.bytes = param2;
      this.progress = param3;
      this.over = param4;
      this.tree = {};
      var _loc5_:* = 0;
      while(_loc5_ < param1.length)
      {
         _loc6_ = param1[_loc5_];
         _loc7_ = this.tree;
         _loc8_ = 0;
         while(_loc8_ < _loc6_.iname.length)
         {
            _loc9_ = _loc6_.iname.charCodeAt(_loc8_);
            if(_loc7_[_loc9_] == null)
            {
               _loc7_[_loc9_] = {};
            }
            _loc7_ = _loc7_[_loc9_];
            _loc8_++;
         }
         _loc7_["oname"] = _loc6_.oname;
         _loc5_++;
      }
      setTimeout(this.replace,1,0);
   }
   
   private function replace(param1:int) : void
   {
      var _loc2_:int = getTimer();
      while(getTimer() - _loc2_ < 100)
      {
         var param1:int = this.replaceAt(param1);
         if(param1 < 0)
         {
            return;
         }
      }
      this.progress(param1 / this.bytes.length);
      setTimeout(this.replace,1,param1);
   }
   
   private function replaceAt(param1:uint) : int
   {
      var _loc6_:String = null;
      var _loc2_:int = this.bytes.length;
      if(param1 >= _loc2_)
      {
         this.over();
         return -1;
      }
      var _loc3_:Object = this.tree;
      var _loc4_:* = "";
      var _loc5_:int = param1;
      while(_loc5_ < _loc2_)
      {
         _loc3_ = _loc3_[this.bytes[_loc5_]];
         if(_loc3_ == null)
         {
            break;
         }
         _loc6_ = _loc3_.oname;
         if(_loc6_ != null)
         {
            _loc4_ = _loc6_;
         }
         _loc5_++;
      }
      _loc5_ = 0;
      _loc2_ = _loc4_.length;
      while(_loc5_ < _loc2_)
      {
         this.bytes[param1 + _loc5_] = _loc4_.charCodeAt(_loc5_);
         _loc5_++;
      }
      return param1 + 1 + _loc2_;
   }
}
