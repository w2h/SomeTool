package rumorPlot.model.info
{
   public class ResultInfos
   {
       
      public var level:int;
      
      public var num:int;
      
      public var max_hp:int;
      
      public var body_attack:int;
      
      public var body_defense:int;
      
      public var ninja_attack:int;
      
      public var ninja_defense:int;
      
      public function ResultInfos()
      {
         super();
      }
      
      public function decode(param1:XML) : void
      {
         this.level = param1.@level;
         this.num = param1.@num;
         this.max_hp = param1.@max_hp;
         this.body_attack = param1.@body_attack;
         this.body_defense = param1.@body_defense;
         this.ninja_attack = param1.@ninja_attack;
         this.ninja_defense = param1.@ninja_defense;
      }
      
      public function encode() : XML
      {
         var _loc1_:XML = <ResultInfo/>;
         this.level && (_loc1_.@level = this.level);
         this.num && (_loc1_.@num = this.num);
         this.max_hp && (_loc1_.@max_hp = this.max_hp);
         this.body_attack && (_loc1_.@body_attack = this.body_attack);
         this.body_defense && (_loc1_.@body_defense = this.body_defense);
         this.ninja_attack && (_loc1_.@ninja_attack = this.ninja_attack);
         this.ninja_defense && (_loc1_.@ninja_defense = this.ninja_defense);
         return _loc1_;
      }
   }
}
