package npc.cfgs
{
   public class ActivityHubNpcCfg extends BaseNpcCfg
   {
       
      public var href:String;
      
      public var words:String;
      
      public function ActivityHubNpcCfg()
      {
         super();
      }
      
      override public function parse(param1:XML) : void
      {
         super.parse(param1);
         name = param1.@name;
         this.href = param1.@href;
         this.words = param1.@words;
      }
   }
}
