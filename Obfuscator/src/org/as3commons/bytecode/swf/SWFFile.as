package org.as3commons.bytecode.swf
{
   import flash.geom.Rectangle;
   import org.as3commons.bytecode.tags.ISWFTag;
   import org.as3commons.lang.Assert;
   import org.as3commons.bytecode.abc.AbcFile;
   import org.as3commons.bytecode.tags.DoABCTag;
   
   public class SWFFile
   {
       
      private var _signature:String;
      
      private var _version:uint;
      
      private var _fileLength:uint;
      
      private var _frameSize:Rectangle;
      
      private var _frameRate:uint;
      
      private var _frameCount:uint;
      
      private var _tags:Array;
      
      public function SWFFile()
      {
         super();
         this.initSWFFile();
      }
      
      protected function initSWFFile() : void
      {
         this._signature = SWFWeaverFileIO.SWF_SIGNATURE_UNCOMPRESSED;
         this._version = 10;
         this._frameSize = new Rectangle();
         this._frameRate = 1;
         this._frameCount = 1;
         this._tags = [];
      }
      
      public function get tags() : Array
      {
         return this._tags.concat([]);
      }
      
      public function get frameSize() : Rectangle
      {
         return this._frameSize;
      }
      
      public function set frameSize(param1:Rectangle) : void
      {
         this._frameSize = param1;
      }
      
      public function get frameRate() : uint
      {
         return this._frameRate;
      }
      
      public function set frameRate(param1:uint) : void
      {
         this._frameRate = param1;
      }
      
      public function get frameCount() : uint
      {
         return this._frameCount;
      }
      
      public function set frameCount(param1:uint) : void
      {
         this._frameCount = param1;
      }
      
      public function get signature() : String
      {
         return this._signature;
      }
      
      public function set signature(param1:String) : void
      {
         this._signature = param1;
      }
      
      public function get version() : uint
      {
         return this._version;
      }
      
      public function set version(param1:uint) : void
      {
         this._version = param1;
      }
      
      public function get fileLength() : uint
      {
         return this._fileLength;
      }
      
      public function set fileLength(param1:uint) : void
      {
         this._fileLength = param1;
      }
      
      public function addTag(param1:ISWFTag) : void
      {
         Assert.notNull(param1,"tag argument must not be null");
         this._tags[this._tags.length] = param1;
      }
      
      public function getTagsByType(param1:Class) : Array
      {
         var _loc3_:ISWFTag = null;
         Assert.notNull(param1,"tagClass argument must not be null");
         var _loc2_:Array = [];
         for each(_loc3_ in this._tags)
         {
            if(_loc3_ is param1)
            {
               _loc2_[_loc2_.length] = _loc3_;
            }
         }
         return _loc2_;
      }
      
      public function getAbcFileForClassName(param1:String) : AbcFile
      {
         var _loc3_:DoABCTag = null;
         Assert.hasText(param1,"className argument must not be empty or null");
         var _loc2_:Array = this.getTagsByType(DoABCTag);
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_.abcFile.containsClass(param1))
            {
               return _loc3_.abcFile;
            }
         }
         return null;
      }
   }
}
