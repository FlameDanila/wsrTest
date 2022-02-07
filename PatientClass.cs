using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace wipief
{
    public class Patient
    {
        public string patient { get; set; }

        public List<string> services { get; set; }

        public override string ToString()
        {
            string f = services.Count.ToString();
            return string.Format($"Информация о пациенте: \n\tId:" + patient + " services: " + f);
        }
    }
}
