package cfgData
{
   import flash.utils.getQualifiedClassName;
   import flash.net.registerClassAlias;
   import cfgData.dataStruct.ActivityHubCFG;
   import cfgData.dataStruct.ActivityHubLiteCFG;
   import cfgData.dataStruct.ArenaBadgeCFG;
   import cfgData.dataStruct.BattleNpcCFG;
   import cfgData.dataStruct.CardItemCFG;
   import cfgData.dataStruct.CardItemRecycleCFG;
   import cfgData.dataStruct.ChristmasTaskCFG;
   import cfgData.dataStruct.CommonItemCFG;
   import cfgData.dataStruct.CrewNinjaUpgradeCFG;
   import cfgData.dataStruct.DungeonGroupInfoCFG;
   import cfgData.dataStruct.DungeonInfoCFG;
   import cfgData.dataStruct.EquipmentItemCFG;
   import cfgData.dataStruct.ExamConfCFG;
   import cfgData.dataStruct.FashionConfigCFG;
   import cfgData.dataStruct.FashionItemCFG;
   import cfgData.dataStruct.GemItemCFG;
   import cfgData.dataStruct.GuildBeastCaptureCFG;
   import cfgData.dataStruct.GuildBeastCFG;
   import cfgData.dataStruct.HomeChatConfigCFG;
   import cfgData.dataStruct.HomeFavourConfigCFG;
   import cfgData.dataStruct.HomeNinjiaShowConfigCFG;
   import cfgData.dataStruct.HuntLifeChakraUpgradeExpConfigCFG;
   import cfgData.dataStruct.HuntLifeConfigCFG;
   import cfgData.dataStruct.ItemAchievedWayCFG;
   import cfgData.dataStruct.KnowledgeTestArgumentsCFG;
   import cfgData.dataStruct.KnowledgeTestNpcCFG;
   import cfgData.dataStruct.KnowledgeTestPrizeCFG;
   import cfgData.dataStruct.LimitGiftedBattleStanceCFG;
   import cfgData.dataStruct.LimitGiftedConfigCFG;
   import cfgData.dataStruct.LimitGiftedCustomBattleCFG;
   import cfgData.dataStruct.LimitGiftedTalkLibCFG;
   import cfgData.dataStruct.LimitNpcCFG;
   import cfgData.dataStruct.MoodInfoCFG;
   import cfgData.dataStruct.NarutoStoneExplorerCFG;
   import cfgData.dataStruct.NewestNinjaViewCFG;
   import cfgData.dataStruct.NinjaBattleInfoCFG;
   import cfgData.dataStruct.NinjaInfoCFG;
   import cfgData.dataStruct.NinjaLevelInfoCFG;
   import cfgData.dataStruct.NinjaLevelUpgradeDialogCFG;
   import cfgData.dataStruct.NinjaPropsPropertyColorConfigCFG;
   import cfgData.dataStruct.NinjaSkillCFG;
   import cfgData.dataStruct.PopupConfCFG;
   import cfgData.dataStruct.QuizRewardLevelCFG;
   import cfgData.dataStruct.RewardItemTransferCFG;
   import cfgData.dataStruct.RewardTransferCFG;
   import cfgData.dataStruct.RunesCFG;
   import cfgData.dataStruct.SceneCFG;
   import cfgData.dataStruct.SkillBookPriceCFG;
   import cfgData.dataStruct.SkillCFG;
   import cfgData.dataStruct.SpecialbattleCFG;
   import cfgData.dataStruct.SpringBathConfigCFG;
   import cfgData.dataStruct.SpringBathEffectConfigCFG;
   import cfgData.dataStruct.SummonBeastFragmentCFG;
   import cfgData.dataStruct.SummonMonsterCFG;
   import cfgData.dataStruct.TabardAssetsCFG;
   import cfgData.dataStruct.TabardLevelUpCFG;
   import cfgData.dataStruct.TabardStepUpCFG;
   import cfgData.dataStruct.TalentCFG;
   import cfgData.dataStruct.TaskTransferCFG;
   import cfgData.dataStruct.ToStrongerCFG;
   import cfgData.dataStruct.TreasureMapItemCFG;
   import cfgData.dataStruct.UpgradeEquipmentCostCFG;
   import cfgData.dataStruct.UpgradeEquipmentValueCFG;
   import flash.utils.Dictionary;
   
   public class ConfigClassAlias
   {
       
      private var m_regClass:Array;
      
      public function ConfigClassAlias()
      {
         var _loc1_:Class = null;
         this.m_regClass = [ActivityHubCFG,ActivityHubLiteCFG,ArenaBadgeCFG,BattleNpcCFG,CardItemCFG,CardItemRecycleCFG,ChristmasTaskCFG,CommonItemCFG,CrewNinjaUpgradeCFG,DungeonGroupInfoCFG,DungeonInfoCFG,EquipmentItemCFG,ExamConfCFG,FashionConfigCFG,FashionItemCFG,GemItemCFG,GuildBeastCaptureCFG,GuildBeastCFG,HomeChatConfigCFG,HomeFavourConfigCFG,HomeNinjiaShowConfigCFG,HuntLifeChakraUpgradeExpConfigCFG,HuntLifeConfigCFG,ItemAchievedWayCFG,KnowledgeTestArgumentsCFG,KnowledgeTestNpcCFG,KnowledgeTestPrizeCFG,LimitGiftedBattleStanceCFG,LimitGiftedConfigCFG,LimitGiftedCustomBattleCFG,LimitGiftedTalkLibCFG,LimitNpcCFG,MoodInfoCFG,NarutoStoneExplorerCFG,NewestNinjaViewCFG,NinjaBattleInfoCFG,NinjaInfoCFG,NinjaLevelInfoCFG,NinjaLevelUpgradeDialogCFG,NinjaPropsPropertyColorConfigCFG,NinjaSkillCFG,PopupConfCFG,QuizRewardLevelCFG,RewardItemTransferCFG,RewardTransferCFG,RunesCFG,SceneCFG,SkillBookPriceCFG,SkillCFG,SpecialbattleCFG,SpringBathConfigCFG,SpringBathEffectConfigCFG,SummonBeastFragmentCFG,SummonMonsterCFG,TabardAssetsCFG,TabardLevelUpCFG,TabardStepUpCFG,TalentCFG,TaskTransferCFG,ToStrongerCFG,TreasureMapItemCFG,UpgradeEquipmentCostCFG,UpgradeEquipmentValueCFG];
         super();
         for each(_loc1_ in this.m_regClass)
         {
            registerClass(_loc1_);
         }
         registerClass(Dictionary);
         registerClass(Array);
         registerClass(Vector);
      }
      
      public static function registerClass(param1:Class) : void
      {
         var _loc2_:String = null;
         if(param1 != null)
         {
            _loc2_ = getQualifiedClassName(param1);
            registerClassAlias(_loc2_.split("::").pop(),param1);
         }
      }
   }
}
