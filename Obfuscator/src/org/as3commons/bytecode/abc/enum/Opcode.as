package org.as3commons.bytecode.abc.enum
{
   import flash.utils.Dictionary;
   import flash.events.IEventDispatcher;
   import flash.utils.ByteArray;
   import org.as3commons.bytecode.abc.Op;
   import org.as3commons.bytecode.abc.MethodBody;
   import org.as3commons.bytecode.abc.AbcFile;
   import org.as3commons.bytecode.util.AbcSpec;
   import org.as3commons.bytecode.abc.JumpTargetData;
   import org.as3commons.bytecode.util.ReadWritePair;
   import org.as3commons.bytecode.emit.asm.ClassInfoReference;
   import org.as3commons.lang.StringUtils;
   import org.as3commons.bytecode.abc.Integer;
   import org.as3commons.bytecode.abc.UnsignedInteger;
   import org.as3commons.bytecode.abc.BaseMultiname;
   import org.as3commons.bytecode.abc.ClassInfo;
   import org.as3commons.bytecode.abc.LNamespace;
   import org.as3commons.bytecode.abc.ExceptionInfo;
   import org.as3commons.bytecode.abc.IConstantPool;
   import org.as3commons.bytecode.abc.ByteCodeErrorEvent;
   import flash.events.EventDispatcher;
   import flash.errors.IllegalOperationError;
   
   public final class Opcode
   {
      
      private static var _enumCreated:Boolean = false;
      
      private static const _ALL_OPCODES:Dictionary = new Dictionary();
      
      private static const _opcodeNameLookup:Dictionary = new Dictionary();
      
      public static const errorDispatcher:IEventDispatcher = new EventDispatcher();
      
      public static const add:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(160,"add");
      
      public static const add_d:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(155,"add_d");
      
      public static const add_i:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(197,"add_i");
      
      public static const applytype:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(83,"applytype",[int,AbcSpec.U30]);
      
      public static const astype:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(134,"astype",[BaseMultiname,AbcSpec.U30]);
      
      public static const astypelate:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(135,"astypelate");
      
      public static const bitand:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(168,"bitand");
      
      public static const bitnot:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(151,"bitnot");
      
      public static const bitor:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(169,"bitor");
      
      public static const bitxor:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(170,"bitxor");
      
      public static const bkpt:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(1,"bkpt");
      
      public static const bkptline:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(242,"bkptline",[Integer,AbcSpec.U30]);
      
      public static const call:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(65,"call",[int,AbcSpec.U30]);
      
      public static const callinterface:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(77,"callinterface",[BaseMultiname,AbcSpec.U30],[int,AbcSpec.U30]);
      
      public static const callmethod:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(67,"callmethod",[int,AbcSpec.U30],[int,AbcSpec.U30]);
      
      public static const callproperty:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(70,"callproperty",[BaseMultiname,AbcSpec.U30],[int,AbcSpec.U30]);
      
      public static const callproplex:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(76,"callproplex",[BaseMultiname,AbcSpec.U30],[int,AbcSpec.U30]);
      
      public static const callpropvoid:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(79,"callpropvoid",[BaseMultiname,AbcSpec.U30],[int,AbcSpec.U30]);
      
      public static const callstatic:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(68,"callstatic",[int,AbcSpec.U30],[int,AbcSpec.U30]);
      
      public static const callsuper:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(69,"callsuper",[BaseMultiname,AbcSpec.U30],[int,AbcSpec.U30]);
      
      public static const callsuperid:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(75,"callsuperid");
      
      public static const callsupervoid:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(78,"callsupervoid",[BaseMultiname,AbcSpec.U30],[int,AbcSpec.U30]);
      
      public static const checkfilter:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(120,"checkfilter");
      
      public static const coerce:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(128,"coerce",[BaseMultiname,AbcSpec.U30]);
      
      public static const coerce_a:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(130,"coerce_a");
      
      public static const coerce_b:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(129,"coerce_b");
      
      public static const coerce_d:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(132,"coerce_d");
      
      public static const coerce_i:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(131,"coerce_i");
      
      public static const coerce_o:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(137,"coerce_o");
      
      public static const coerce_s:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(133,"coerce_s");
      
      public static const coerce_u:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(136,"coerce_u");
      
      public static const concat:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(154,"concat");
      
      public static const construct:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(66,"construct",[int,AbcSpec.U30]);
      
      public static const constructprop:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(74,"constructprop",[BaseMultiname,AbcSpec.U30],[int,AbcSpec.U30]);
      
      public static const constructsuper:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(73,"constructsuper",[int,AbcSpec.U30]);
      
      public static const convert_b:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(118,"convert_b");
      
      public static const convert_d:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(117,"convert_d");
      
      public static const convert_i:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(115,"convert_i");
      
      public static const convert_o:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(119,"convert_o");
      
      public static const convert_s:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(112,"convert_s");
      
      public static const convert_u:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(116,"convert_u");
      
      public static const debug:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(239,"debug",[uint,AbcSpec.U8],[int,AbcSpec.U30],[uint,AbcSpec.U8],[int,AbcSpec.U30]);
      
      public static const debugfile:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(241,"debugfile",[String,AbcSpec.U30]);
      
      public static const debugline:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(240,"debugline",[int,AbcSpec.U30]);
      
      public static const declocal:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(148,"declocal",[int,AbcSpec.U30]);
      
      public static const declocal_i:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(195,"declocal_i",[int,AbcSpec.U30]);
      
      public static const decrement:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(147,"decrement");
      
      public static const decrement_i:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(193,"decrement_i");
      
      public static const deleteproperty:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(106,"deleteproperty",[BaseMultiname,AbcSpec.U30]);
      
      public static const deletepropertylate:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(107,"deletepropertylate");
      
      public static const divide:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(163,"divide");
      
      public static const dup:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(42,"dup");
      
      public static const dxns:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(6,"dxns",[String,AbcSpec.U30]);
      
      public static const dxnslate:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(7,"dxnslate");
      
      public static const equals:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(171,"equals");
      
      public static const esc_xattr:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(114,"esc_xattr");
      
      public static const esc_xelem:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(113,"esc_xelem");
      
      public static const finddef:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(95,"finddef",[BaseMultiname,AbcSpec.U30]);
      
      public static const findproperty:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(94,"findproperty",[BaseMultiname,AbcSpec.U30]);
      
      public static const findpropglobal:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(92,"findpropglobal",[BaseMultiname,AbcSpec.U30]);
      
      public static const findpropglobalstrict:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(91,"findpropglobalstrict",[BaseMultiname,AbcSpec.U30]);
      
      public static const findpropstrict:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(93,"findpropstrict",[BaseMultiname,AbcSpec.U30]);
      
      public static const getdescendants:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(89,"getdescendants",[BaseMultiname,AbcSpec.U30]);
      
      public static const getglobalscope:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(100,"getglobalscope");
      
      public static const getglobalslot:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(110,"getglobalslot",[int,AbcSpec.U30]);
      
      public static const getlex:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(96,"getlex",[BaseMultiname,AbcSpec.U30]);
      
      public static const getlocal:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(98,"getlocal",[int,AbcSpec.U30]);
      
      public static const getlocal_0:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(208,"getlocal_0");
      
      public static const getlocal_1:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(209,"getlocal_1");
      
      public static const getlocal_2:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(210,"getlocal_2");
      
      public static const getlocal_3:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(211,"getlocal_3");
      
      public static const getouterscope:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(103,"getouterscope",[int,AbcSpec.U30]);
      
      public static const getproperty:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(102,"getproperty",[BaseMultiname,AbcSpec.U30]);
      
      public static const getscopeobject:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(101,"getscopeobject",[int,AbcSpec.U8]);
      
      public static const getslot:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(108,"getslot",[int,AbcSpec.U30]);
      
      public static const getsuper:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(4,"getsuper",[BaseMultiname,AbcSpec.U30]);
      
      public static const greaterequals:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(176,"greaterequals");
      
      public static const greaterthan:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(175,"greaterthan");
      
      public static const hasnext2:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(50,"hasnext2",[int,AbcSpec.U30],[int,AbcSpec.U30]);
      
      public static const hasnext:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(31,"hasnext");
      
      public static const ifeq:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(19,"ifeq",[int,AbcSpec.S24]);
      
      public static const iffalse:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(18,"iffalse",[int,AbcSpec.S24]);
      
      public static const ifge:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(24,"ifge",[int,AbcSpec.S24]);
      
      public static const ifgt:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(23,"ifgt",[int,AbcSpec.S24]);
      
      public static const ifle:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(22,"ifle",[int,AbcSpec.S24]);
      
      public static const iflt:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(21,"iflt",[int,AbcSpec.S24]);
      
      public static const ifne:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(20,"ifne",[int,AbcSpec.S24]);
      
      public static const ifnge:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(15,"ifnge",[int,AbcSpec.S24]);
      
      public static const ifngt:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(14,"ifngt",[int,AbcSpec.S24]);
      
      public static const ifnle:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(13,"ifnle",[int,AbcSpec.S24]);
      
      public static const ifnlt:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(12,"ifnlt",[int,AbcSpec.S24]);
      
      public static const ifstricteq:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(25,"ifstricteq",[int,AbcSpec.S24]);
      
      public static const ifstrictne:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(26,"ifstrictne",[int,AbcSpec.S24]);
      
      public static const iftrue:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(17,"iftrue",[int,AbcSpec.S24]);
      
      public static const in_op:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(180,"in");
      
      public static const inclocal:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(146,"inclocal",[int,AbcSpec.U30]);
      
      public static const inclocal_i:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(194,"inclocal_i",[int,AbcSpec.U30]);
      
      public static const increment:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(145,"increment");
      
      public static const increment_i:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(192,"increment_i");
      
      public static const initproperty:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(104,"initproperty",[BaseMultiname,AbcSpec.U30]);
      
      public static const instance_of:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(177,"instance_of");
      
      public static const istype:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(178,"istype",[BaseMultiname,AbcSpec.U30]);
      
      public static const istypelate:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(179,"istypelate");
      
      public static const jump:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(16,"jump",[int,AbcSpec.S24]);
      
      public static const kill:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(8,"kill",[int,AbcSpec.U30]);
      
      public static const label:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(9,"label");
      
      public static const lessequals:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(174,"lessequals");
      
      public static const lessthan:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(173,"lessthan");
      
      public static const lookupswitch:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(27,"lookupswitch",[int,AbcSpec.S24],[int,AbcSpec.U30],[Array,AbcSpec.S24_ARRAY]);
      
      public static const lshift:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(165,"lshift");
      
      public static const modulo:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(164,"modulo");
      
      public static const multiply:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(162,"multiply");
      
      public static const multiply_i:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(199,"multiply_i");
      
      public static const negate:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(144,"negate");
      
      public static const negate_i:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(196,"negate_i");
      
      public static const newactivation:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(87,"newactivation");
      
      public static const newarray:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(86,"newarray",[int,AbcSpec.U30]);
      
      public static const newcatch:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(90,"newcatch",[ExceptionInfo,AbcSpec.U30]);
      
      public static const newclass:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(88,"newclass",[ClassInfo,AbcSpec.U30]);
      
      public static const newfunction:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(64,"newfunction",[int,AbcSpec.U30]);
      
      public static const newobject:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(85,"newobject",[int,AbcSpec.U30]);
      
      public static const nextname:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(30,"nextname");
      
      public static const nextvalue:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(35,"nextvalue");
      
      public static const nop:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(2,"nop");
      
      public static const not:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(150,"not");
      
      public static const pop:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(41,"pop");
      
      public static const popscope:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(29,"popscope");
      
      public static const pushbyte:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(36,"pushbyte",[int,AbcSpec.UNSIGNED_BYTE]);
      
      public static const pushconstant:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(34,"pushconstant",[String,AbcSpec.U30]);
      
      public static const pushdecimal:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(51,"pushdecimal",[Number,AbcSpec.U30]);
      
      public static const pushdnan:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(52,"pushdnan");
      
      public static const pushdouble:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(47,"pushdouble",[Number,AbcSpec.U30]);
      
      public static const pushfalse:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(39,"pushfalse");
      
      public static const pushint:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(45,"pushint",[Integer,AbcSpec.U30]);
      
      public static const pushnamespace:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(49,"pushnamespace",[LNamespace,AbcSpec.U30]);
      
      public static const pushnan:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(40,"pushnan");
      
      public static const pushnull:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(32,"pushnull");
      
      public static const pushscope:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(48,"pushscope");
      
      public static const pushshort:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(37,"pushshort",[int,AbcSpec.S32]);
      
      public static const pushstring:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(44,"pushstring",[String,AbcSpec.U30]);
      
      public static const pushtrue:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(38,"pushtrue");
      
      public static const pushuint:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(46,"pushuint",[UnsignedInteger,AbcSpec.U30]);
      
      public static const pushundefined:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(33,"pushundefined");
      
      public static const pushwith:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(28,"pushwith");
      
      public static const returnvalue:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(72,"returnvalue");
      
      public static const returnvoid:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(71,"returnvoid");
      
      public static const rshift:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(166,"rshift");
      
      public static const setglobalslot:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(111,"setglobalslot",[int,AbcSpec.U30]);
      
      public static const setlocal:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(99,"setlocal",[int,AbcSpec.U30]);
      
      public static const setlocal_0:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(212,"setlocal_0");
      
      public static const setlocal_1:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(213,"setlocal_1");
      
      public static const setlocal_2:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(214,"setlocal_2");
      
      public static const setlocal_3:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(215,"setlocal_3");
      
      public static const setproperty:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(97,"setproperty",[BaseMultiname,AbcSpec.U30]);
      
      public static const setpropertylate:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(105,"setpropertylate");
      
      public static const setslot:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(109,"setslot",[int,AbcSpec.U30]);
      
      public static const setsuper:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(5,"setsuper",[BaseMultiname,AbcSpec.U30]);
      
      public static const strictequals:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(172,"strictequals");
      
      public static const subtract:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(161,"subtract");
      
      public static const subtract_i:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(198,"subtract_i");
      
      public static const swap:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(43,"swap");
      
      public static const throw_op:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(3,"throw");
      
      public static const typeof_op:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(149,"typeof");
      
      public static const urshift:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(167,"urshift");
      
      public static const si8:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(58,"si8");
      
      public static const si16:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(59,"si16");
      
      public static const si32:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(60,"si32");
      
      public static const sf32:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(61,"sf32");
      
      public static const sf64:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(62,"sf64");
      
      public static const li8:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(53,"li8");
      
      public static const li16:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(54,"li16");
      
      public static const li32:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(55,"li32");
      
      public static const lf32:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(56,"lf32");
      
      public static const lf64:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(57,"lf64");
      
      public static const sxi1:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(80,"sxi1");
      
      public static const sxi8:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(81,"sxi8");
      
      public static const sxi16:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(82,"sxi16");
      
      public static const END_OF_BODY:org.as3commons.bytecode.abc.enum.Opcode = new org.as3commons.bytecode.abc.enum.Opcode(int.MIN_VALUE,"endOfBody");
      
      private static const UNKNOWN_OPCODE_ARGUMENTTYPE:String = "Unknown Opcode argument type. {0}";
      
      private static var _jumpLookup:Dictionary;
      
      public static const jumpOpcodes:Dictionary = new Dictionary();
      
      {
         jumpOpcodes[ifeq] = true;
         jumpOpcodes[ifge] = true;
         jumpOpcodes[ifgt] = true;
         jumpOpcodes[ifle] = true;
         jumpOpcodes[iflt] = true;
         jumpOpcodes[ifne] = true;
         jumpOpcodes[ifnge] = true;
         jumpOpcodes[ifngt] = true;
         jumpOpcodes[ifnle] = true;
         jumpOpcodes[ifnlt] = true;
         jumpOpcodes[ifstricteq] = true;
         jumpOpcodes[ifstrictne] = true;
         jumpOpcodes[iffalse] = true;
         jumpOpcodes[iftrue] = true;
         jumpOpcodes[jump] = true;
         jumpOpcodes[lookupswitch] = true;
         _enumCreated = true;
      }
      
      private var _opcodeName:String;
      
      private var _value:int;
      
      private var _argumentTypes:Array;
      
      public function Opcode(param1:int, param2:String, ... rest)
      {
         super();
         this._value = param1;
         this._opcodeName = param2;
         this._argumentTypes = rest;
         if(_ALL_OPCODES[this._value] == null)
         {
            _ALL_OPCODES[this._value] = this;
            _opcodeNameLookup[param2] = this;
            return;
         }
         throw new IllegalOperationError("duplicate! " + param2 + " : " + Opcode(_ALL_OPCODES[this._value]).opcodeName);
      }
      
      public static function fromName(param1:String) : org.as3commons.bytecode.abc.enum.Opcode
      {
         return _opcodeNameLookup[param1] as org.as3commons.bytecode.abc.enum.Opcode;
      }
      
      public static function serialize(param1:Vector.<Op>, param2:MethodBody, param3:AbcFile) : ByteArray
      {
         var _loc6_:Op = null;
         var _loc4_:Dictionary = new Dictionary();
         var _loc5_:ByteArray = AbcSpec.newByteArray();
         for each(_loc6_ in param1)
         {
            _loc6_.baseLocation = _loc5_.position;
            _loc4_[_loc6_] = _loc5_.position;
            AbcSpec.writeU8(_loc6_.opcode._value,_loc5_);
            serializeOpcodeArguments(_loc6_,param3,param2,_loc5_);
            _loc6_.endLocation = _loc5_.position;
         }
         _loc5_.position = 0;
         resolveJumpTargets(_loc5_,param2.jumpTargets,_loc4_);
         _loc5_.position = 0;
         param2.opcodeBaseLocations = _loc4_;
         return _loc5_;
      }
      
      public static function resolveJumpTargets(param1:ByteArray, param2:Vector.<JumpTargetData>, param3:Dictionary) : void
      {
         var _loc4_:JumpTargetData = null;
         var _loc5_:* = false;
         var _loc6_:* = 0;
         var _loc7_:Op = null;
         for each(_loc4_ in param2)
         {
            _loc5_ = false;
            if(_loc4_.targetOpcode != null)
            {
               if(resolveJumpTarget(param3,_loc4_.jumpOpcode,_loc4_.targetOpcode,param1,_loc4_.jumpOpcode.opcode === org.as3commons.bytecode.abc.enum.Opcode.lookupswitch) == true)
               {
                  _loc5_ = true;
               }
            }
            if(_loc4_.extraOpcodes != null)
            {
               _loc6_ = 0;
               for each(_loc7_ in _loc4_.extraOpcodes)
               {
                  if(resolveJumpTarget(param3,_loc4_.jumpOpcode,_loc7_,param1,true,_loc6_++))
                  {
                     _loc5_ = true;
                  }
               }
            }
         }
      }
      
      public static function resolveJumpTarget(param1:Dictionary, param2:Op, param3:Op, param4:ByteArray, param5:Boolean = false, param6:int = -1) : Boolean
      {
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc7_:int = param6 < 0?int(param2.parameters[0]):param2.parameters[2][param6];
         var _loc8_:int = param5?param2.baseLocation:param2.endLocation;
         var _loc9_:int = _loc8_ + _loc7_;
         if(_loc9_ != param3.baseLocation)
         {
            _loc10_ = param2.baseLocation;
            _loc11_ = param3.baseLocation - _loc8_;
            param4.position = _loc10_ + 1;
            if(param6 > -1)
            {
               AbcSpec.readU30(param4);
            }
            while(param6-- > 0)
            {
               AbcSpec.readS24(param4);
            }
            AbcSpec.writeS24(_loc11_,param4);
            return true;
         }
         return false;
      }
      
      public static function serializeOpcodeArguments(param1:Op, param2:AbcFile, param3:MethodBody, param4:ByteArray) : void
      {
         var _loc6_:Array = null;
         var _loc7_:* = undefined;
         var _loc8_:ReadWritePair = null;
         var _loc9_:* = undefined;
         var _loc5_:* = 0;
         for each(_loc6_ in param1.opcode.argumentTypes)
         {
            _loc7_ = _loc6_[0];
            _loc8_ = _loc6_[1];
            _loc9_ = param1.parameters[_loc5_++];
            serializeOpcodeArgument(_loc9_,_loc7_,param2,param3,param1,param4,_loc8_);
         }
      }
      
      public static function serializeOpcodeArgument(param1:*, param2:*, param3:AbcFile, param4:MethodBody, param5:Op, param6:ByteArray, param7:ReadWritePair) : void
      {
         var arr:Array = null;
         var caseCount:int = 0;
         var i:int = 0;
         var rawValue:* = param1;
         var argumentType:* = param2;
         var abcFile:AbcFile = param3;
         var methodBody:MethodBody = param4;
         var op:Op = param5;
         var serializedOpcodes:ByteArray = param6;
         var readWritePair:ReadWritePair = param7;
         var abcCompatibleValue:* = rawValue;
         switch(argumentType)
         {
            case uint:
            case int:
               abcCompatibleValue = rawValue;
               break;
            case Integer:
               abcCompatibleValue = abcFile.constantPool.addInt(rawValue);
               break;
            case UnsignedInteger:
               abcCompatibleValue = abcFile.constantPool.addUint(rawValue);
               break;
            case Number:
               abcCompatibleValue = abcFile.constantPool.addDouble(rawValue);
               break;
            case BaseMultiname:
               abcCompatibleValue = abcFile.constantPool.addMultiname(rawValue);
               break;
            case ClassInfo:
               if(rawValue is ClassInfoReference)
               {
                  abcCompatibleValue = abcFile.addClassInfoReference(rawValue);
               }
               else
               {
                  abcCompatibleValue = abcFile.addClassInfo(rawValue);
               }
               break;
            case String:
               abcCompatibleValue = abcFile.constantPool.addString(rawValue);
               break;
            case LNamespace:
               abcCompatibleValue = abcFile.constantPool.addNamespace(rawValue);
               break;
            case ExceptionInfo:
               abcCompatibleValue = methodBody.addExceptionInfo(rawValue);
               break;
            case Array:
               arr = rawValue as Array;
               caseCount = arr.length;
               i = 0;
               while(i < caseCount)
               {
                  readWritePair.write(arr[i],serializedOpcodes);
                  i++;
               }
               break;
            default:
               throw new Error(StringUtils.substitute(UNKNOWN_OPCODE_ARGUMENTTYPE,argumentType));
         }
         try
         {
            if(!(abcCompatibleValue is Array))
            {
               readWritePair.write(abcCompatibleValue,serializedOpcodes);
            }
            return;
         }
         catch(e:Error)
         {
            trace(e);
            return;
         }
      }
      
      public static function parse(param1:ByteArray, param2:int, param3:MethodBody, param4:IConstantPool) : Vector.<Op>
      {
         var methodBodyPosition:uint = 0;
         var newOp:Op = null;
         var pos:int = 0;
         var fragment:ByteArray = null;
         var byteArray:ByteArray = param1;
         var opcodeByteCodeLength:int = param2;
         var methodBody:MethodBody = param3;
         var constantPool:IConstantPool = param4;
         var opcodePositions:Dictionary = new Dictionary();
         var opcodeEndPositions:Dictionary = new Dictionary();
         var ops:Vector.<Op> = new Vector.<Op>();
         methodBody.jumpTargets = methodBody.jumpTargets || new Vector.<JumpTargetData>();
         methodBodyPosition = byteArray.position;
         var opcodeStartPosition:uint = 0;
         var offset:uint = 0;
         var positionAtEndOfBytecode:int = byteArray.position + opcodeByteCodeLength;
         try
         {
            while(byteArray.position < positionAtEndOfBytecode)
            {
               opcodeStartPosition = byteArray.position;
               newOp = parseOpcode(byteArray,constantPool,ops,methodBody);
               newOp.baseLocation = offset;
               offset = offset + (byteArray.position - opcodeStartPosition);
               newOp.endLocation = offset;
               opcodePositions[newOp.baseLocation] = newOp;
               opcodeEndPositions[newOp.endLocation] = newOp;
            }
            if(byteArray.position > positionAtEndOfBytecode)
            {
               throw new Error("Opcode parsing read beyond end of method body");
            }
         }
         catch(e:*)
         {
            pos = byteArray.position - methodBodyPosition;
            fragment = AbcSpec.newByteArray();
            fragment.writeBytes(byteArray,methodBodyPosition,opcodeByteCodeLength);
            fragment.position = 0;
            errorDispatcher.dispatchEvent(new ByteCodeErrorEvent(ByteCodeErrorEvent.BYTECODE_METHODBODY_ERROR,fragment,pos));
            throw e;
         }
         resolveParsedJumpTargets(methodBody,opcodePositions,opcodeEndPositions,opcodeByteCodeLength);
         methodBody.opcodeBaseLocations = opcodePositions;
         return ops;
      }
      
      public static function resolveParsedJumpTargets(param1:MethodBody, param2:Dictionary, param3:Dictionary, param4:int) : void
      {
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:Op = null;
         var _loc8_:* = 0;
         var _loc9_:Array = null;
         var _loc10_:JumpTargetData = null;
         var _loc11_:* = 0;
         for each(_loc10_ in param1.jumpTargets)
         {
            if(_loc10_.jumpOpcode.opcode !== org.as3commons.bytecode.abc.enum.Opcode.lookupswitch)
            {
               _loc5_ = int(_loc10_.jumpOpcode.parameters[0]);
               _loc6_ = _loc10_.jumpOpcode.endLocation + _loc5_;
               _loc7_ = param2[_loc6_];
               if(_loc7_ == null)
               {
                  _loc7_ = org.as3commons.bytecode.abc.enum.Opcode.END_OF_BODY.op();
                  _loc7_.baseLocation = param4;
               }
               _loc10_.targetOpcode = _loc7_;
            }
            else
            {
               _loc9_ = _loc10_.jumpOpcode.parameters[2] as Array;
               _loc8_ = _loc9_.length;
               _loc11_ = 0;
               while(_loc11_ < _loc8_)
               {
                  _loc5_ = _loc9_[_loc11_];
                  _loc6_ = _loc10_.jumpOpcode.baseLocation + _loc5_;
                  _loc7_ = param2[_loc6_];
                  if(_loc7_ == null)
                  {
                     _loc7_ = org.as3commons.bytecode.abc.enum.Opcode.END_OF_BODY.op();
                     _loc7_.baseLocation = param4;
                  }
                  _loc10_.addTarget(_loc7_);
                  _loc11_++;
               }
               _loc5_ = _loc10_.jumpOpcode.parameters[0];
               _loc6_ = _loc10_.jumpOpcode.baseLocation + _loc5_;
               _loc7_ = param2[_loc6_];
               if(_loc7_ == null)
               {
                  _loc7_ = org.as3commons.bytecode.abc.enum.Opcode.END_OF_BODY.op();
                  _loc7_.baseLocation = param4;
               }
               _loc10_.targetOpcode = _loc7_;
            }
         }
      }
      
      public static function parseOpcode(param1:ByteArray, param2:IConstantPool, param3:Vector.<Op>, param4:MethodBody) : Op
      {
         var _loc8_:* = undefined;
         var _loc9_:* = 0;
         var _loc10_:Op = null;
         var _loc5_:int = param1.position;
         var _loc6_:org.as3commons.bytecode.abc.enum.Opcode = determineOpcode(AbcSpec.readU8(param1));
         var _loc7_:Array = [];
         for each(_loc8_ in _loc6_.argumentTypes)
         {
            parseOpcodeArguments(_loc8_,param1,param2,param4,_loc7_);
         }
         _loc9_ = param1.position;
         _loc10_ = _loc6_.op(_loc7_);
         param3[param3.length] = _loc10_;
         if(jumpOpcodes[_loc6_] == true)
         {
            param4.jumpTargets[param4.jumpTargets.length] = new JumpTargetData(_loc10_);
         }
         return _loc10_;
      }
      
      public static function parseOpcodeArguments(param1:*, param2:ByteArray, param3:IConstantPool, param4:MethodBody, param5:Array) : void
      {
         var _loc9_:* = undefined;
         var _loc10_:Array = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc6_:* = param1[0];
         var _loc7_:ReadWritePair = param1[1];
         var _loc8_:* = _loc7_.read(param2);
         switch(_loc6_)
         {
            case uint:
            case int:
               param5[param5.length] = _loc8_;
               break;
            case Integer:
               _loc9_ = param3.integerPool[_loc8_];
               param5[param5.length] = _loc9_;
               break;
            case UnsignedInteger:
               _loc9_ = param3.uintPool[_loc8_];
               param5[param5.length] = _loc9_;
               break;
            case Number:
               _loc9_ = param3.doublePool[_loc8_];
               param5[param5.length] = _loc9_;
               break;
            case BaseMultiname:
               _loc9_ = param3.multinamePool[_loc8_];
               param5[param5.length] = _loc9_;
               break;
            case ClassInfo:
               _loc9_ = param3.classInfo[_loc8_];
               param5[param5.length] = _loc9_;
               break;
            case String:
               _loc9_ = param3.stringPool[_loc8_];
               param5[param5.length] = _loc9_;
               break;
            case LNamespace:
               _loc9_ = param3.namespacePool[_loc8_];
               param5[param5.length] = _loc9_;
               break;
            case Array:
               _loc10_ = [];
               _loc11_ = int(param5[1]);
               _loc10_[_loc10_.length] = _loc8_;
               _loc12_ = 0;
               while(_loc12_ < _loc11_)
               {
                  _loc10_[_loc10_.length] = _loc7_.read(param2);
                  _loc12_++;
               }
               param5[param5.length] = _loc10_;
               break;
            case ExceptionInfo:
               param5[param5.length] = _loc8_;
               break;
            default:
               throw new Error("Unknown Opcode argument type." + _loc6_.toString());
         }
      }
      
      public static function determineOpcode(param1:int) : org.as3commons.bytecode.abc.enum.Opcode
      {
         var _loc2_:org.as3commons.bytecode.abc.enum.Opcode = _ALL_OPCODES[param1];
         if(!_loc2_)
         {
            throw new Error("No match for Opcode: 0x" + param1.toString(16) + " (" + param1 + ")");
         }
         return _loc2_;
      }
      
      public function get argumentTypes() : Array
      {
         return this._argumentTypes;
      }
      
      public function get opcodeName() : String
      {
         return this._opcodeName;
      }
      
      public function toString() : String
      {
         return StringUtils.substitute("[Opcode(value={0},name={1})]",this._value,this._opcodeName);
      }
      
      public function op(param1:Array = null) : Op
      {
         if(this._argumentTypes != null && this._argumentTypes.length > 0)
         {
            return new Op(this,param1);
         }
         return new Op(this);
      }
   }
}
