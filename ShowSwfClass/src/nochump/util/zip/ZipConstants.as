package nochump.util.zip
{

    public class ZipConstants extends Object
    {
        public static const LOCSIG:uint = 67324752;
		public static const LOCHDR:uint = 30;
		public static const LOCVER:uint = 4;
		public static const LOCNAM:uint = 26;
		public static const EXTSIG:uint = 134695760;
		public static const EXTHDR:uint = 16;
		public static const CENSIG:uint = 33639248;
		public static const CENHDR:uint = 46;
		public static const CENVER:uint = 6;
		public static const CENNAM:uint = 28;
		public static const CENOFF:uint = 42;
		public static const ENDSIG:uint = 101010256;
		public static const ENDHDR:uint = 22;
		public static const ENDTOT:uint = 10;
		public static const ENDOFF:uint = 16;
		public static const STORED:uint = 0;
		public static const DEFLATED:uint = 8;

        function ZipConstants()
        {
            return;
        }// end function

    }
}
