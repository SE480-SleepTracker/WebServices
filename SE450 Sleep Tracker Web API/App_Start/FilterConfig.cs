﻿using System.Web;
using System.Web.Mvc;

namespace SE450_Sleep_Tracker_Web_API
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}