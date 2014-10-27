using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SE450_Sleep_Tracker_Web_API.Models
{
    public class User
    {
        public int ID
        {
            get;
            set;
        }

        public String FirstName
        {
            get;
            set;
        }
  
        public String LastName
        {
            get;
            set;
        }
        
        public String FullName
        {
            get { return String.Format("{0} {1}", FirstName, LastName); }
        }

        public String EmailAddress
        {
            get;
            set;
        }
        
        public String CellPhone
        {
            get;
            set;
        }

        public String HomePhone
        {
            get;
            set;
        }
    }
}