package vip
{
   import flash.events.IEventDispatcher;
   import vip.model.data.VIPPrivilegeInfo;
   
   [Event(name="change",type="flash.events.Event")]
   public interface IVIPPrivilege extends IEventDispatcher
   {
       
      function getVIPPrivilege(param1:uint) : VIPPrivilegeInfo;
      
      function get current() : VIPPrivilegeInfo;
      
      function get list() : Vector.<VIPPrivilegeInfo>;
   }
}
