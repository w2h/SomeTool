package user.utils
{
   import ninja.executer.NinjaProtoExecuter;
   import ninja.model.data.FormationInfo;
   import serverProto.formationBase.ProtoFormationInfo;
   import ninja.model.data.NinjaInfo;
   import ninja.model.data.NinjaArrangeInfo;
   import def.PluginDef;
   
   public class UserProtoNinjaDecoding extends NinjaProtoExecuter
   {
       
      public function UserProtoNinjaDecoding(param1:Boolean = true, param2:String = null)
      {
         super(PluginDef.USER);
      }
      
      public function getFormationInfo(param1:ProtoFormationInfo) : FormationInfo
      {
         return decodeFormationInfo(param1);
      }
      
      public function getNinjaInfos(param1:Array) : Vector.<NinjaInfo>
      {
         return this.decodeNinjaInfos(param1);
      }
      
      public function attachPackageNinjaFormation(param1:Vector.<NinjaInfo>, param2:FormationInfo) : Vector.<NinjaInfo>
      {
         var _loc3_:* = false;
         var _loc4_:NinjaInfo = null;
         var _loc5_:NinjaArrangeInfo = null;
         for each(_loc4_ in param1)
         {
            _loc3_ = false;
            for each(_loc5_ in param2.arranges)
            {
               if(_loc5_.sequence == _loc4_.sequence)
               {
                  _loc3_ = true;
                  _loc4_.status = _loc4_.status | 1 << param2.id;
               }
            }
         }
         return param1;
      }
   }
}
