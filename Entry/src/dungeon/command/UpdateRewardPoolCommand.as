package dungeon.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class UpdateRewardPoolCommand extends Command
   {
       
      public var deadNinjaNum:int;
      
      public var playerExpNum:int;
      
      public var ninjaExpNum:int;
      
      public var money:int;
      
      public var goldBox:int;
      
      public var silverBox:int;
      
      public var addValue:Boolean;
      
      public function UpdateRewardPoolCommand(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:Boolean = false)
      {
         super();
         this.deadNinjaNum = param6;
         this.playerExpNum = param1;
         this.ninjaExpNum = param2;
         this.money = param3;
         this.goldBox = param4;
         this.silverBox = param5;
         this.addValue = param7;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.DUNGEON;
      }
   }
}
