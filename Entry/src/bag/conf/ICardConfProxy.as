package bag.conf
{
   import bag.data.CardItemData;
   
   public interface ICardConfProxy extends IConfProxy
   {
       
      function findDataByNinjaId(param1:uint, param2:Boolean = false) : CardItemData;
   }
}
