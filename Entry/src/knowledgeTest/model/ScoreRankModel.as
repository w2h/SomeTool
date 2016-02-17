package knowledgeTest.model
{
   import com.tencent.morefun.naruto.model.BaseModel;
   import serverProto.knowledgeTest.ProtoKnowledgeTestData;
   import def.ModelDef;
   
   public class ScoreRankModel extends BaseModel
   {
      
      public static const RANK_CHANGE_EVENT:String = "rankChgEvt";
       
      private var mUserScore:uint;
      
      private var mRank:Array;
      
      private var mQuestion:ProtoKnowledgeTestData;
      
      public function ScoreRankModel(param1:String)
      {
         super(ModelDef.KNOWLEDGE_TEST_SCORERANK);
      }
      
      public function get question() : ProtoKnowledgeTestData
      {
         return this.mQuestion;
      }
      
      public function set question(param1:ProtoKnowledgeTestData) : void
      {
         this.mQuestion = param1;
      }
      
      public function get rank() : Array
      {
         return this.mRank;
      }
      
      public function set rank(param1:Array) : void
      {
         this.mRank = param1;
         dispModelEvent(RANK_CHANGE_EVENT);
      }
      
      public function get userScore() : uint
      {
         return this.mUserScore;
      }
      
      public function set userScore(param1:uint) : void
      {
         this.mUserScore = param1;
      }
      
      public function clean() : void
      {
         if(this.mRank)
         {
            this.mRank.splice(0);
         }
         this.mQuestion = null;
      }
   }
}
