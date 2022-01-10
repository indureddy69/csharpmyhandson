using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace ConsoleApp6
{

    class Program
    {
        static void Main(string[] args)
        {

            


            Console.WriteLine("id      " + "source        " + "destination              " + "date             " + "status           " + "network          ");
            FileStream fs = new FileStream("C:/Users/91938/Desktop/cg.txt", FileMode.Open, FileAccess.Read);
            StreamReader sr = new StreamReader(fs);
            while (sr.Peek() > 0)
            {
                string readmyline = sr.ReadLine();
                string[] strings = readmyline.Split(':');
                if (readmyline != "")
                {

                    if (strings.Length > 1)
                    {
                        if (readmyline.StartsWith("Date"))
                        {

                            string date = strings[1].Split(' ')[0];
                            Console.WriteLine(date + "       ");
                        }
                        else
                        {
                            Console.Write(strings[1] + "        ");
                        }
                    }
                    else
                    {
                        Console.WriteLine();
                    }



                }
            }
        }
    }
}
    

        

