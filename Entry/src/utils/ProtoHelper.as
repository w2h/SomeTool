package utils
{
   import bag.data.ItemData;
   import serverProto.inc.ProtoItemInfo;
   import bag.utils.BagUtils;
   
   public class ProtoHelper
   {
       
      public function ProtoHelper()
      {
         super();
      }
      
      public static function parseProtoItemInfos(param1:Array) : Vector.<ItemData>
      {
         var _loc5_:ProtoItemInfo = null;
         var _loc6_:ItemData = null;
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:Vector.<ItemData> = new Vector.<ItemData>();
         var _loc3_:int = param1.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1[_loc4_] as ProtoItemInfo;
            _loc6_ = BagUtils.createItemData(_loc5_.id,_loc5_.num);
            _loc2_.push(_loc6_);
            _loc4_++;
         }
         return _loc2_;
      }
   }
}
