using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace rangenumber
{
    class Program
    {
        static void Main(string[] args)
        {
            List<int> Numbers = new List<int> { 30, 40, 50, 60 ,70, 80, 90 ,120,150,32,21,11};
            var SelectedNumbers = Numbers.Where(X => X > 30).Where(X => X < 100);
            foreach(var s in SelectedNumbers)
            {
                Console.WriteLine(s);
            }

        }
    }
}
