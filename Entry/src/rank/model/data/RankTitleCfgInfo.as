package rank.model.data
{
   public class RankTitleCfgInfo
   {
       
      public var id:uint;
      
      public var name:String;
      
      public var rank:uint;
      
      public var rarity:uint;
      
      public var color:uint;
      
      public var obtainTips:String;
      
      public var expireTips:String;
      
      public var image:String;
      
      public var hasImage:Boolean;
      
      public var owned:Boolean;
      
      public var selected:Boolean;
      
      public function RankTitleCfgInfo()
      {
         super();
      }
      
      public function get formattedName() : String
      {
         if(this.name)
         {
            return "<font color=\'#" + this.color.toString(16).toUpperCase() + "\'>" + this.name + "</font>";
         }
         return "";
      }
   }
}
