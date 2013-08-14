using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace watchingyou.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewData["Message"] = "Welcome to ASP.NET MVC!";

            return View();
        }

        public ActionResult About()
        {
            return View();
        }

        public ActionResult Cast()
        {
            return View();
        }

        public ActionResult Crew()
        {
            return View();
        }

        public ActionResult BTS()
        {
            return View();
        }

        public ActionResult FB()
        {
            return View();
        }

        public ActionResult GG()
        {
            return View();
        }

        public ActionResult Movies_In_San_Antonio()
        {
            return View();
        }

        public ActionResult Funny_Web_Series()
        {
            return View();
        }

        public ActionResult Watching_You_Characters()
        {
            return View();
        }
    }
}
