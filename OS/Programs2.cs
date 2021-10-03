namespace oc_labs
{

    class Program
    {

        static unsafe void Main(string[] args)
        {
            uint tid;
            uint param0 = 0;
            CreateThread(null, 0, Start, &param0, 0, out tid);

            uint param1 = 2;
            CreateThread(null, 0, Start, &param1, 0, out tid);

            Console.ReadLine();
        }

        static unsafe void Start(uint* param)
        {
            Console.WriteLine(*param);
        }

        [DllImport("Kernel32.dll", CharSet = CharSet.Auto, SetLastError = true)]
        private unsafe static extern uint CreateThread(
        uint* lpThreadAttributes,
        uint dwStackSize,
        ThreadWithParams lpStartAddress,
        uint* lpParameter,
        uint dwCreationFlags,
        out uint lpThreadId);

    }

    unsafe delegate void ThreadWithParams(uint* i);
}

