using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyToDoApp.Common.Models
{
    public class BaseDto
    {
		private int id;

		public int Id
		{
			get { return id; }
			set { id = value; }
		}

		private DateTime creatDate;

		public DateTime CreatDate 
		{
			get { return creatDate; }
			set { creatDate = value; }
		}

        private DateTime upDateTime;

        public DateTime UpDateTime
        {
            get { return upDateTime; }
			set { upDateTime = value; }
        }



    }
}
