package utils
{
   import flash.events.EventDispatcher;
   import flash.net.FileFilter;
   import flash.utils.ByteArray;
   import flash.net.FileReference;
   import flash.events.ProgressEvent;
   import flash.events.Event;
   import flash.display.Loader;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.IOErrorEvent;
   
   [Event(name="ioError",type="flash.events.IOErrorEvent")]
   [Event(name="progress",type="flash.events.ProgressEvent")]
   [Event(name="complete",type="flash.events.Event")]
   public class LocalFile extends EventDispatcher
   {
      
      public static const ImageFilter:FileFilter = new FileFilter("Images (*.jpg, *.jpeg, *.gif, *.png)","*.jpg;*.jpeg;*.gif;*.png");
      
      public static const AudioFilter:FileFilter = new FileFilter("Audios (*.wav, *.mp3)","*.wav;*.mp3");
       
      public var data:ByteArray;
      
      public var parsedData:Object;
      
      private var _file:FileReference;
      
      private var _onSuccess:Function;
      
      private var _onError:Function;
      
      private var _fileFilter:Array;
      
      private var _needParse:Boolean;
      
      private var _extensions:Array;
      
      private var _isRead:Boolean;
      
      public function LocalFile()
      {
         super();
         this._file = new FileReference();
         this._file.addEventListener(Event.SELECT,this.onSelect);
         this._file.addEventListener(ProgressEvent.PROGRESS,this.onProgress);
         this._file.addEventListener(Event.COMPLETE,this.onComplete);
      }
      
      public static function write(param1:ByteArray, param2:String) : LocalFile
      {
         var _loc3_:LocalFile = new LocalFile();
         _loc3_.write(param1,param2);
         return _loc3_;
      }
      
      private function onProgress(param1:ProgressEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public function write(param1:Object, param2:String = null) : void
      {
         this.reset();
         this._isRead = false;
         this._file.save(param1,param2);
      }
      
      private function reset() : void
      {
         this._file.cancel();
         this._onSuccess = null;
         this._onError = null;
         this._fileFilter = null;
         this._extensions = null;
      }
      
      public function read(param1:Function = null, param2:Function = null, ... rest) : void
      {
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:String = null;
         var _loc7_:String = null;
         this.reset();
         this._isRead = true;
         this.data = null;
         this.parsedData = null;
         this._extensions = rest;
         this._onError = param2;
         this._onSuccess = param1;
         if(rest.length > 0)
         {
            _loc6_ = "All (";
            _loc7_ = "";
            _loc4_ = 0;
            _loc5_ = rest.length;
            while(_loc4_ < _loc5_)
            {
               rest[_loc4_] = rest[_loc4_].toLowerCase();
               if(_loc4_ == 0)
               {
                  _loc6_ = _loc6_ + ("*." + rest[_loc4_]);
                  _loc7_ = _loc7_ + ("*." + rest[_loc4_]);
               }
               else
               {
                  _loc6_ = _loc6_ + (",*." + rest[_loc4_]);
                  _loc7_ = _loc7_ + (";*." + rest[_loc4_]);
               }
               _loc4_++;
            }
            _loc6_ = _loc6_ + ")";
            this._fileFilter = [];
            this._fileFilter.push(new FileFilter(_loc6_,_loc7_));
         }
         this._file.browse(this._fileFilter);
      }
      
      public function readAndParse(param1:Function = null, param2:Function = null, ... rest) : void
      {
         this._needParse = true;
         this.read.apply(this,[param1,param2].concat(rest));
      }
      
      private function onSelect(param1:Event) : void
      {
         var e:Event = param1;
         if(this._isRead)
         {
            try
            {
               this._file.load();
               return;
            }
            catch(e:Error)
            {
               dispatchError("error:_file.load error!");
               return;
            }
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var loader:Loader = null;
         var xml:XML = null;
         var str:String = null;
         var e:Event = param1;
         if(this._isRead)
         {
            this.data = this._file.data;
            if(this._needParse)
            {
               if(this._extensions.indexOf("jpg") > -1 || this._extensions.indexOf("jpeg") > -1 || this._extensions.indexOf("png") > -1 || this._extensions.indexOf("swf") > -1)
               {
                  loader = new Loader();
                  loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onLoaderComplete);
                  try
                  {
                     loader.loadBytes(this._file.data);
                  }
                  catch(e:Error)
                  {
                     dispatchError("error:loader.loadBytes error!");
                  }
               }
               else if(this._extensions.indexOf("xml") > -1)
               {
                  xml = XML(this.data.readUTFBytes(this.data.bytesAvailable));
                  this.dispatchComplete(xml);
               }
               else if(this._extensions.indexOf("txt") > -1)
               {
                  str = this.data.readUTFBytes(this.data.bytesAvailable);
                  this.dispatchComplete(str);
               }
               else
               {
                  this.dispatchComplete(this.data);
               }
            }
            else
            {
               this.dispatchComplete(this.data);
            }
         }
      }
      
      private function onLoaderComplete(param1:Event) : void
      {
         var _loc2_:Bitmap = null;
         var _loc3_:Sprite = null;
         if(this._extensions.indexOf("jpg") > -1 || this._extensions.indexOf("jpeg") > -1 || this._extensions.indexOf("png") > -1)
         {
            _loc2_ = param1.target.content as Bitmap;
            if(!_loc2_)
            {
               this.dispatchError("error:not a bitmap!");
               return;
            }
            this.parsedData = _loc2_;
            this.dispatchComplete(_loc2_);
         }
         else if(this._extensions.indexOf("swf") > -1)
         {
            _loc3_ = param1.target.content as Sprite;
            if(!_loc3_)
            {
               this.dispatchError("error:not a sprite!");
               return;
            }
            this.parsedData = _loc3_;
            this.dispatchComplete(_loc3_);
         }
      }
      
      private function dispatchComplete(param1:Object) : void
      {
         if(this._onSuccess != null)
         {
            this._onSuccess(param1);
         }
         else
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function dispatchError(param1:String = "") : void
      {
         var param1:String = "##LocalFile: " + param1;
         if(this._onError != null)
         {
            this._onError(param1);
         }
         else
         {
            dispatchEvent(new IOErrorEvent(IOErrorEvent.IO_ERROR,false,false,param1));
         }
      }
      
      public function get size() : Number
      {
         return this._file.size;
      }
      
      public function get name() : String
      {
         return this._file.name;
      }
      
      public function get fileFilter() : Array
      {
         return this._fileFilter;
      }
      
      public function set fileFilter(param1:Array) : void
      {
         this._fileFilter = param1;
      }
   }
}
