package base
{
   import flash.utils.Dictionary;
   import com.tencent.morefun.framework.base.Command;
   
   public class CommandExecuter extends NarutoExecuter
   {
       
      private var dict:Dictionary;
      
      public function CommandExecuter(param1:String)
      {
         super(param1);
         this.dict = new Dictionary(false);
      }
      
      protected final function storeCommand(param1:Object, param2:Command) : void
      {
         if(param1 && param2)
         {
            this.dict[param1] = param2;
         }
      }
      
      protected final function getCommand(param1:Object) : Command
      {
         return param1?this.dict[param1] as Command:null;
      }
      
      protected final function deleteCommand(param1:Object) : Command
      {
         var _loc2_:Command = this.dict[param1] as Command;
         delete this.dict[param1];
         return _loc2_;
      }
      
      protected final function finishCommand(param1:Object) : void
      {
         var _loc2_:Command = null;
         if(param1)
         {
            _loc2_ = this.getCommand(param1);
            _loc2_ && _loc2_.finish();
            delete this.dict[param1];
         }
      }
      
      protected final function failCommand(param1:Object, param2:int) : void
      {
         var _loc3_:Command = null;
         if(param1)
         {
            _loc3_ = this.getCommand(param1);
            _loc3_ && _loc3_.faild(param2);
            delete this.dict[param1];
         }
      }
   }
}
