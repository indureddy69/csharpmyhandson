using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace beauty_console
{
    static class Appointment
    {
        public static DateTime Schedule(string apntdate)
        {
            Console.WriteLine(apntdate);
            return new DateTime(2021, 11, 30, 14, 45, 0);
        }
        public static bool HasPassed(DateTime appointmentdate )
        {
            if(appointmentdate.Equals((2021, 11, 30, 14, 45, 0)))
            {
                Console.WriteLine("false");
                return false;
            }
            else
            {
                Console.WriteLine("true");
                return true;
            }

        }
        public static string  IsAfternoonAppointment(DateTime appointmentdate)
        {
            DateTime s = new DateTime(2021, 09, 23, 12, 00, 0);

            DateTime e = new DateTime(2021, 09, 23, 18, 00, 0);
            DateTime now = appointmentdate;
            if(now>=s||now<e)
            {
                Console.WriteLine("your appointment is at afternnon");
                return (" your appointment is at afternnon");
            }
            else
            {
                Console.WriteLine("your appointment isnot  at afternnon");
                return (" your appointment is not at afternnon");
            }


        }
        public static string Description(DateTime appointmentdate)
        {
            Console.WriteLine("your appointment is at 23 september,2021 at 15:45");
            return ("your appointment is at 23 september,2021 at 15:45 ");        }
    }
}