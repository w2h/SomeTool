package npc.cfgs
{
   public class InteractiveNpcCfg extends BaseNpcCfg
   {
       
      public var triggerRange:int;
      
      public var triggermsg:String;
      
      public var trigertype:int;
      
      public var triggerTime:int;
      
      public var singContent:String;
      
      public var changeModel:int;
      
      public var openable:Boolean = true;
      
      public var speed:int;
      
      public var appearClientId:uint;
      
      public function InteractiveNpcCfg()
      {
         super();
      }
      
      override public function parse(param1:XML) : void
      {
         super.parse(param1);
         name = param1.@name;
         title = param1.@title;
         moveRate = param1.@moveRate;
         moveRange = param1.@moveRange;
         this.speed = param1.@speed;
         this.triggerRange = param1.@triggerRange;
         this.triggermsg = param1.@triggermsg;
         this.trigertype = param1.@triggertype;
         this.triggerTime = param1.@triggerTime;
         this.singContent = param1.@singContent;
         this.changeModel = param1.@changeModel;
         this.appearClientId = parseInt(param1.@appearClientId);
      }
   }
}
