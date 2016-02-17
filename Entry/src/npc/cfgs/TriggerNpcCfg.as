package npc.cfgs
{
   public class TriggerNpcCfg extends BaseNpcCfg
   {
       
      public var radius:int;
      
      public var needTask:String;
      
      public var visible:Boolean;
      
      public var fight:int;
      
      public var dialogue:int;
      
      public var newplot:int;
      
      public var isContinue:Boolean;
      
      public var miniMapVisiable:Boolean;
      
      public var miniMapType:int;
      
      public var allowCaptain:Boolean;
      
      public function TriggerNpcCfg()
      {
         super();
      }
      
      override public function parse(param1:XML) : void
      {
         super.parse(param1);
         this.radius = param1.@radius;
         this.needTask = param1.@needTask;
         this.visible = String(param1.@visible) == "1";
         this.fight = param1.@fight;
         this.dialogue = param1.@dialogue;
         this.isContinue = String(param1.@isContinue) == "1";
         this.newplot = param1.@newplot;
         this.allowCaptain = String(param1.@allowCaptain) == "1";
         this.miniMapVisiable = String(param1.@miniMapVisiable) == "1";
         this.miniMapType = int(param1.@miniMapType);
      }
   }
}
