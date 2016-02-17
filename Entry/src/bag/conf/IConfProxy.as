package bag.conf
{
   import bag.data.ItemData;
   
   public interface IConfProxy
   {
       
      function destroy() : void;
      
      function findDataById(param1:uint, param2:Boolean = false) : ItemData;
      
      function fillData(param1:ItemData) : void;
   }
}
