package com.tencent.morefun.framework.base
{
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   import flash.utils.getQualifiedClassName;
   import com.tencent.morefun.framework.apf.core.facade.Facade;
   
   [Event(name="loadingEnd",type="com.tencent.morefun.framework.base.CommandEvent")]
   [Event(name="progress",type="com.tencent.morefun.framework.base.CommandEvent")]
   [Event(name="faild",type="com.tencent.morefun.framework.base.CommandEvent")]
   [Event(name="finish",type="com.tencent.morefun.framework.base.CommandEvent")]
   public class Command extends EventDispatcher
   {
      
      public static const ERR_LOAD_ERROR:uint = uint.MAX_VALUE;
      
      public static const SERVER_ERROR:uint = uint.MAX_VALUE - 1;
      
      public static const SUB_COMMAND_ERROR:uint = uint.MAX_VALUE - 2;
      
      public static const SINGLE_FILE:int = 1;
      
      public static const TOTAL_FILE:int = 2;
      
      public static const FULL_SCREEN:int = 4;
       
      private var subCommandList:Array;
      
      private var finishSubCommandList:Array;
      
      private var faildSubCommandList:Array;
      
      private var isEnd:Boolean;
      
      private var commandLoadingType:int;
      
      private var _autoHideLoading:Boolean;
      
      public var lodingRes:Array;
      
      public var requiredAssets:Vector.<String>;
      
      public var assets:Dictionary;
      
      public var needHostPlugin:Boolean = true;
      
      public var loadingEnabled:Boolean = true;
      
      public var ecode:int = 0;
      
      public var error:String;
      
      public function Command(param1:int = 2, param2:Boolean = true)
      {
         this.subCommandList = [];
         this.finishSubCommandList = [];
         this.faildSubCommandList = [];
         this.lodingRes = [];
         super();
         this._autoHideLoading = param2;
         this.commandLoadingType = param1;
      }
      
      public function reset() : void
      {
         var _loc1_:Command = null;
         for each(_loc1_ in this.subCommandList)
         {
            _loc1_.removeEventListener(CommandEvent.FINISH,this.onSubCommandFinish);
            _loc1_.removeEventListener(CommandEvent.FAILD,this.onSubCommandFaild);
         }
         for each(_loc1_ in this.finishSubCommandList)
         {
            _loc1_.removeEventListener(CommandEvent.FINISH,this.onSubCommandFinish);
            _loc1_.removeEventListener(CommandEvent.FAILD,this.onSubCommandFaild);
         }
         for each(_loc1_ in this.faildSubCommandList)
         {
            _loc1_.removeEventListener(CommandEvent.FINISH,this.onSubCommandFinish);
            _loc1_.removeEventListener(CommandEvent.FAILD,this.onSubCommandFaild);
         }
         this.subCommandList = [];
         this.finishSubCommandList = [];
         this.faildSubCommandList = [];
         this.ecode = 0;
      }
      
      public function begin() : void
      {
      }
      
      public function end() : void
      {
         var _loc1_:String = null;
         if(this.requiredAssets)
         {
            this.requiredAssets.length = 0;
            this.requiredAssets = null;
         }
         if(this.assets)
         {
            for(_loc1_ in this.assets)
            {
               delete this.assets[_loc1_];
            }
            this.assets = null;
         }
      }
      
      public function faild(param1:int = 999) : void
      {
         this.isEnd = true;
         this.ecode = param1 || 999;
         this.endCheck();
      }
      
      public function faildAndError(param1:String, param2:int = 500) : void
      {
         this.isEnd = true;
         this.error = param1;
         this.faild(param2);
      }
      
      public function isFinish() : Boolean
      {
         return this.isEnd;
      }
      
      public function get autoHideLoading() : Boolean
      {
         return this._autoHideLoading;
      }
      
      public function loadingEnd() : void
      {
         dispatchEvent(new CommandEvent(CommandEvent.LOADING_END));
      }
      
      public function finish() : void
      {
         this.isEnd = true;
         this.endCheck();
      }
      
      public function progress() : void
      {
         dispatchEvent(new CommandEvent(CommandEvent.PROGRESS));
      }
      
      public function getPluginName() : String
      {
         throw new Error("请重写Command.getPluginName()，并返回该Command所属的插件名！");
      }
      
      public function addSubCommand(param1:Command) : void
      {
         param1.addEventListener(CommandEvent.FINISH,this.onSubCommandFinish);
         param1.addEventListener(CommandEvent.FAILD,this.onSubCommandFaild);
         this.subCommandList.push(param1);
      }
      
      private function onSubCommandFinish(param1:CommandEvent) : void
      {
         var _loc2_:Command = null;
         _loc2_ = param1.currentTarget as Command;
         _loc2_.removeEventListener(CommandEvent.FINISH,this.onSubCommandFinish);
         _loc2_.removeEventListener(CommandEvent.FAILD,this.onSubCommandFaild);
         this.subCommandList.splice(this.subCommandList.indexOf(_loc2_),1);
         this.finishSubCommandList.push(_loc2_);
         this.endCheck();
      }
      
      private function onSubCommandFaild(param1:CommandEvent) : void
      {
         var _loc2_:Command = null;
         _loc2_ = param1.currentTarget as Command;
         _loc2_.removeEventListener(CommandEvent.FINISH,this.onSubCommandFinish);
         _loc2_.removeEventListener(CommandEvent.FAILD,this.onSubCommandFaild);
         this.subCommandList.splice(this.subCommandList.indexOf(_loc2_),1);
         this.faildSubCommandList.push(_loc2_);
         this.endCheck();
      }
      
      public function endCheck() : void
      {
         if(this.subCommandList.length == 0 && this.isEnd)
         {
            if(this.ecode != 0)
            {
               dispatchEvent(new CommandEvent(CommandEvent.FAILD));
               return;
            }
            if(this.faildSubCommandList.length == 0)
            {
               dispatchEvent(new CommandEvent(CommandEvent.FINISH));
            }
            else
            {
               this.ecode = SUB_COMMAND_ERROR;
               dispatchEvent(new CommandEvent(CommandEvent.FAILD));
            }
            this.end();
         }
      }
      
      public function getFaildSubCommandList() : Array
      {
         return this.faildSubCommandList;
      }
      
      public function getFinishSunCommandList() : Array
      {
         return this.finishSubCommandList;
      }
      
      public function getCommandName() : String
      {
         return getQualifiedClassName(this).replace("::",".");
      }
      
      public function call() : void
      {
         this.ecode = 0;
         Facade.getInstance().commandManager.callCommand(this);
      }
      
      public function cancel() : void
      {
         Facade.getInstance().commandManager.cancelCommand(this);
      }
      
      public function isFullLoadingCommand() : Boolean
      {
         return (this.commandLoadingType & FULL_SCREEN) != 0;
      }
      
      public function isSingleFileLoadingCommand() : Boolean
      {
         return (this.commandLoadingType & SINGLE_FILE) != 0;
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
