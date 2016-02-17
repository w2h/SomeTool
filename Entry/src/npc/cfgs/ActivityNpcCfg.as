package npc.cfgs
{
   public class ActivityNpcCfg extends BaseNpcCfg
   {
       
      public var href:String;
      
      public var functionIcon:int;
      
      public function ActivityNpcCfg()
      {
         super();
      }
      
      override public function parse(param1:XML) : void
      {
         super.parse(param1);
         name = param1.@name;
         this.href = param1.@execute;
         this.functionIcon = int(param1.@headIcon);
      }
   }
}
