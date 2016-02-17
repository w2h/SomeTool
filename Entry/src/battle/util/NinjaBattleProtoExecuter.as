package battle.util
{
   import ninja.executer.NinjaProtoExecuter;
   import ninja.model.data.NinjaInfo;
   import ninja.model.data.FormationInfo;
   import ninja.model.data.NinjaArrangeInfo;
   import com.tencent.morefun.framework.log.logger;
   import serverProto.formationBase.ProtoFormationInfo;
   import def.PluginDef;
   
   public class NinjaBattleProtoExecuter extends NinjaProtoExecuter
   {
       
      public function NinjaBattleProtoExecuter()
      {
         super(PluginDef.BATTLE);
      }
      
      public function getPkgNinjas(param1:Array, param2:FormationInfo) : Vector.<NinjaInfo>
      {
         var _loc3_:Vector.<NinjaInfo> = new Vector.<NinjaInfo>();
         _loc3_ = decodeNinjaInfos(param1);
         this.attachPackageNinjaFormation(_loc3_,param2);
         return _loc3_;
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
                  logger.output("[prewarDebugTrace]","attachPackageNinjaFormation",_loc4_.sequence);
                  _loc3_ = true;
                  _loc4_.status = _loc4_.status | 1 << param2.id;
               }
            }
            if(_loc3_)
            {
            }
         }
         return param1;
      }
      
      public function getFormationInfo(param1:ProtoFormationInfo) : FormationInfo
      {
         return decodeFormationInfo(param1);
      }
   }
}
