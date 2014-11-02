using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http;
using System.Web.OData;
using SE450Database;
using System.Configuration;
using SE450_Sleep_Tracker_Web_API.Models;

namespace SE450_Sleep_Tracker_Web_API.Controllers
{
    /// <summary>
    /// Logic to interact with a user. NOTE: this is temporary.
    /// </summary>
    public class UserController : ODataController
    {
        //
        // GET: /User/

        private readonly string connectionString;

        public UserController()
        {
            connectionString = ConfigurationManager.ConnectionStrings["LinqConnection"].ConnectionString;
        }

        public IHttpActionResult Get(int id)
        {
            using (SleepMonitor monitor = new SleepMonitor(connectionString))
            {
                var deft = monitor.Usr_User.FirstOrDefault(usr => usr.Usr_ID == id);

                return Json<UserModel>(new UserModel(deft));
            }
        }

        //public bool 

    }
}
