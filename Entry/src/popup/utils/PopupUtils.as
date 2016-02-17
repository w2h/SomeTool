package popup.utils
{
   import popup.api.IPopupPlot;
   
   public class PopupUtils
   {
      
      private static var _popupPlot:IPopupPlot;
       
      public function PopupUtils()
      {
         super();
         throw new Error(PopupUtils + " can not be instantiated.");
      }
      
      public static function initialize(param1:IPopupPlot) : void
      {
         _popupPlot = param1;
      }
      
      public static function destroy() : void
      {
         _popupPlot = null;
      }
      
      public static function get delayNewPlot() : Boolean
      {
         if(_popupPlot != null)
         {
            return _popupPlot.delayNewPlot;
         }
         return false;
      }
      
      public static function get holdNewPlot() : Boolean
      {
         if(_popupPlot != null)
         {
            return _popupPlot.holdNewPlot;
         }
         return false;
      }
   }
}
