package skill.config
{
   public class TalentConfig
   {
       
      private var list:Array;
      
      public function TalentConfig(param1:XML)
      {
         super();
         this.parse(param1);
      }
      
      private function parse(param1:XML) : void
      {
         var _loc2_:XML = null;
         var _loc3_:TalentCfg = null;
         this.list = [];
         for each(_loc2_ in param1.talent)
         {
            _loc3_ = new TalentCfg();
            _loc3_.parse(_loc2_);
            this.list.push(_loc3_);
         }
      }
      
      public function getNinjaSkillCfg(param1:uint) : TalentCfg
      {
         var _loc2_:TalentCfg = null;
         for each(_loc2_ in this.list)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
