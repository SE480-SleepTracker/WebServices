using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SE450_Sleep_Tracker_Web_API.Models;
using SE450Database;
using System.Configuration;

namespace SE450_Sleep_Tracker_Web_API.Controllers
{
    public class ChainAnalysisController : Controller
    {
        private readonly string connectionString;

        public ChainAnalysisController()
        {
            connectionString = ConfigurationManager.ConnectionStrings["LinqConnection"].ConnectionString;
        }
        //
        // GET: /ChainAnalysis/

        public ActionResult Index()
        {
            return View();
        }

        public IEnumerable<ChainAnalysis> GetAllAnalysisForUser(int id)
        {
            SleepMonitor monitor = new SleepMonitor(connectionString);
            return monitor.Chn_ChainAnalysis.Where(chn => chn.Chn_usr_ID == id).Select(chn => new ChainAnalysis(chn));
        }

    }
}
