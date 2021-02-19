using pass2fly.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace pass2fly.Controllers
{
  public class LoginController : Controller
  {
    // GET: Login
    public ActionResult Index() {
      return View();
    }

    [HttpPost]
    public ActionResult Authorize(pass2fly.Models.usuario userModel) {
      using(appMVCEntities db = new appMVCEntities()) {
        var userDetails = db.usuarios.Where(x => x.usuario1 == userModel.usuario1 && x.clave == userModel.clave).FirstOrDefault();
        if (userDetails == null) {
          userModel.LoginErrorMessage = "Nombre de usuario o contraseña incorrectos.";
          return View("Index",userModel);
        } else {
          var persona = db.personas.Where(x => x.id == userDetails.idpersona).FirstOrDefault();

          Session["userID"] = userDetails.id;
          Session["userName"] = userDetails.usuario1;
          Session["idpersona"] = persona.id;
          Session["nombres"] = persona.nombre + ' ' + persona.apellido;
          Session["documento"] = persona.documento;
          Session["telefono"] = persona.telefono;
          Session["email"] = persona.email;
          return RedirectToAction("Index","Home");
        }
      }
    }

    public ActionResult LogOut() {
      int userId = (int)Session["userID"];
      Session.Abandon();
      return RedirectToAction("Index","Login");
    }
  }
}