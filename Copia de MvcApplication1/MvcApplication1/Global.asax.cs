﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace MvcApplication1
{
    // Note: For instructions on enabling IIS6 or IIS7 classic mode, 
    // visit http://go.microsoft.com/?LinkId=9394801

    public class MvcApplication : System.Web.HttpApplication
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }

        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

           
            
            routes.MapRoute(
                "Default", // Route name
                "{controller}/{action}/{id}", // URL with parameters
                new { controller = "Home", action = "Index", id = UrlParameter.Optional } // Parameter defaults
            );
       
            routes.MapRoute(
                "Default2", // Route name
                "{controller}/{action}/{id}", // URL with parameters
                new { controller = "Solicitud", action = "Asignar", id = UrlParameter.Optional } // Parameter defaults
            );
            routes.MapRoute(
                "Default3", // Route name
                "{controller}/{action}/{id}/{id2}", // URL with parameters
                new { controller = "Solicitud", action = "Validar", id = UrlParameter.Optional, id2 = UrlParameter.Optional } // Parameter defaults
            );

           
        }

        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();

            RegisterGlobalFilters(GlobalFilters.Filters);
            RegisterRoutes(RouteTable.Routes);
        }
    }
}