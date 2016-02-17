package guild.model
{
   import com.tencent.morefun.naruto.model.BaseModel;
   import com.tencent.morefun.naruto.model.event.ModelEvent;
   import guild.def.EscortModelKeyDef;
   import def.ModelDef;
   
   public class EscortMdoel extends BaseModel
   {
       
      public function EscortMdoel()
      {
         super(ModelDef.GUILD_ESCORT);
      }
      
      public function startEscort() : void
      {
         this.dispModelEvent(ModelEvent.UPDATE,EscortModelKeyDef.START_ESCORT);
      }
      
      public function endEscort() : void
      {
         this.dispModelEvent(ModelEvent.UPDATE,EscortModelKeyDef.END_ESCORT);
      }
   }
}
