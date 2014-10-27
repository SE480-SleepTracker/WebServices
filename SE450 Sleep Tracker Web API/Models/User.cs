using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using SE450_Sleep_Tracker_Web_API.Utility;

namespace SE450_Sleep_Tracker_Web_API.Models
{
    [TypeConverter(typeof(UserConverter))]
    public class User
    {
        #region Properties
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
        #endregion

        #region Public Methods
        public static bool TryParse(string s, out User result)
        {
            result = null;

            var parts = s.Split(',');

            if (parts.Length != 6) return false;

            int id;
            if (int.TryParse(parts[0], out id))
            {
                result = new User()
                {
                    FirstName = parts[1],
                    LastName = parts[2],
                    EmailAddress = parts[3],
                    CellPhone = parts[4],
                    HomePhone = parts[5]
                };

                return true;
            }
            else return false;
        }
        #endregion
    }
}