package guild.model
{
   import com.tencent.morefun.naruto.model.BaseModel;
   import def.ModelDef;
   
   public class GuildBaseModel extends BaseModel
   {
       
      public var guildSceneIgnoreNpcId:int = 0;
      
      public function GuildBaseModel()
      {
         super(ModelDef.GUILD_BASE);
      }
   }
}
