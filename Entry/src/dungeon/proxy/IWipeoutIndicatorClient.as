package dungeon.proxy
{
   import dungeon.wipeout.UniversalWipeoutClock;
   
   public interface IWipeoutIndicatorClient
   {
       
      function updateIndicator(param1:UniversalWipeoutClock) : void;
   }
}
