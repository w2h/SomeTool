package
{
   import flash.net.FileReference;
   import flash.events.Event;
   import flash.net.FileFilter;
   
   public class FileLoader
   {
       
      public var onComplete:Function;
      
      private var file:FileReference;
      
      public function FileLoader(param1:Function = null)
      {
         super();
         this.onComplete = param1;
         this.file = new FileReference();
         this.file.addEventListener(Event.CANCEL,this.onFileSelectionCancelled);
         this.file.addEventListener(Event.SELECT,this.onFileSelected);
         this.file.addEventListener(Event.COMPLETE,this.onFileLoaded);
         this.file.browse([new FileFilter("SWF files","*.swf")]);
      }
      
      private function onFileSelectionCancelled(param1:Event) : void
      {
         if(this.onComplete != null)
         {
            this.onComplete(null);
         }
      }
      
      private function onFileSelected(param1:Event) : void
      {
         this.file.load();
      }
      
      private function onFileLoaded(param1:Event) : void
      {
         if(this.onComplete != null)
         {
            this.onComplete(this.file.data);
         }
      }
   }
}
