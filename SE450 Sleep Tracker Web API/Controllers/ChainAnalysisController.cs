using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//using System.Web.Mvc;
using SE450_Sleep_Tracker_Web_API.Models;
using SE450Database;
using System.Configuration;
using System.Web.Security;
using System.Web.Http;
using System.Web.OData;

namespace SE450_Sleep_Tracker_Web_API.Controllers
{
    public class ChainAnalysisController : ODataController
    {
        private readonly string connectionString;

        public ChainAnalysisController()
        {
            connectionString = ConfigurationManager.ConnectionStrings["LinqConnection"].ConnectionString;
        }

        private SleepMonitor GetInstance()
        {
            return new SleepMonitor(connectionString);
        }
        //
        // GET: /ChainAnalysis/

        /*public IHttpActionResult Index()
        {
            return View();
        }*/

        /// <summary>
        /// Get a list for 
        /// </summary>
        /// <param name="id">User ID</param>
        /// <returns></returns>
        [HttpGet]
        [Authorize]
        public IHttpActionResult GetAllAnalysisForUser(int id)
        {
            if (User.Identity.IsAuthenticated)
            {
                using (SleepMonitor monitor = new SleepMonitor(connectionString))
                {
                    IEnumerable<ChainAnalysisModel> analysis = monitor.Chn_ChainAnalysis.Where(chn => chn.Chn_usr_ID == id).Select(chn => new ChainAnalysisModel(chn));

                    return Json<IEnumerable<ChainAnalysisModel>>(analysis);
                }
            }
            // TODO return unauthorized
            else return BadRequest("Unauthorized");
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id">Chain analysis ID</param>
        [HttpDelete]
        [Authorize]
        public IHttpActionResult Delete(int id)
        {
            // TODO: how do I do this elsewhere? Is this right?
            if (User.Identity.IsAuthenticated)
            {
                using (SleepMonitor monitor = new SleepMonitor(connectionString))
                {
                    Chn_ChainAnalysis analysis = monitor.Chn_ChainAnalysis.FirstOrDefault(chn => chn.Chn_ID == id);

                    if (analysis == null)
                        return BadRequest(String.Format("No chain analysis with ID {0} exists", id));
                    else
                    {
                        try
                        {
                            monitor.Chn_ChainAnalysis.DeleteOnSubmit(analysis);

                            return Ok("Successfully deleted");
                        }
                        catch (Exception e)
                        {
                            return BadRequest("Exception occurred during request. Message: " + e.Message);
                        }
                    }
                } // Dispose of DB connection
            }
            else
                // TODO should be 401
                return BadRequest("Not authorized");
        }

        [HttpPost]
        [Authorize]
        public IHttpActionResult Put(ChainAnalysisModel analysis)
        {
            if (User.Identity.IsAuthenticated)
            {
                using (var monitor = GetInstance())
                {

                    var item = analysis.ToDBObject();

                    monitor.Chn_ChainAnalysis.InsertOnSubmit(item);

                    return Created(item);
                } // Dispose of DB connection
            }
            // TODO should be 401
            else return BadRequest("Not authorized");
        }

    }
}
