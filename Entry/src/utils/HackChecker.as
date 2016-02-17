package utils
{
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   import com.tencent.morefun.naruto.plugin.ui.util.TimerProvider;
   import flash.utils.getTimer;
   import com.tencent.morefun.naruto.util.GameTip;
   import ui.command.ShowTextBoxCommand;
   import def.BoxFlagDef;
   import map.command.HideMoveTargetUiCommand;
   import player.commands.StopSelfMoveCommand;
   
   public final class HackChecker
   {
      
      private static const blur:int = 100;
      
      private static var timer:Timer;
      
      private static var prevDate:Number;
      
      private static var prevTime:int;
      
      private static var tot:int;
      
      private static var nTot:int;
      
      private static var _content:String = "对不起，您的数据异常，请爱护游戏环境，公平游戏。";
       
      public function HackChecker()
      {
         super();
      }
      
      private static function startCheck(param1:Number = 2000) : void
      {
         if(timer == null)
         {
            timer = new Timer(param1,0);
            timer.addEventListener(TimerEvent.TIMER,timeHandler);
         }
         timer.start();
         TimerProvider.removeTimeTask(20000,startCheck,param1);
      }
      
      public static function enabledCheckSpeedUp(param1:Number = 2000, param2:Boolean = true) : void
      {
         if(param2)
         {
            TimerProvider.addTimeTask(20000,startCheck,param1);
         }
         else
         {
            startCheck(param1);
         }
      }
      
      public static function closeCheckSpeedUp() : void
      {
         if(timer && timer.running)
         {
            timer.stop();
         }
      }
      
      private static function timeHandler(param1:TimerEvent) : void
      {
         var _loc5_:* = NaN;
         var _loc2_:int = getTimer();
         var _loc3_:Number = new Date().getTime();
         var _loc4_:int = _loc2_ - prevTime;
         if(!isNaN(prevDate))
         {
            _loc5_ = _loc4_ - (_loc3_ - prevDate);
         }
         if(!isNaN(prevDate) && _loc5_ > blur)
         {
            nTot = 0;
            tot++;
            if(tot >= 4)
            {
               GameTip.show(_content);
               new ShowTextBoxCommand(_content + "[" + _loc5_ + "]",BoxFlagDef.OK,true,null,onCloseUI).call();
               new HideMoveTargetUiCommand().call();
               new StopSelfMoveCommand(true,true,true).call();
               closeCheckSpeedUp();
            }
         }
         else
         {
            nTot++;
            if(nTot >= 4)
            {
               nTot = 0;
               tot = 0;
            }
         }
         prevDate = _loc3_;
         prevTime = _loc2_;
      }
      
      private static function onCloseUI(param1:*) : void
      {
         startCheck();
      }
   }
}
