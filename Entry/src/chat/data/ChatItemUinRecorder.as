package chat.data
{
   import flash.utils.Dictionary;
   
   public class ChatItemUinRecorder
   {
      
      private static var uinToIdDic:Dictionary = new Dictionary();
      
      private static var idToUinDic:Dictionary = new Dictionary();
      
      private static var count:int = 0;
       
      public function ChatItemUinRecorder()
      {
         super();
      }
      
      public static function fromUinToId(param1:uint) : uint
      {
         if(uinToIdDic[param1])
         {
            return uinToIdDic[param1];
         }
         count++;
         uinToIdDic[param1] = count;
         idToUinDic[count] = param1;
         return count;
      }
      
      public static function fromIdToUin(param1:uint) : uint
      {
         return idToUinDic[param1];
      }
   }
}
