//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace pass2fly.Models
{
  using System;
  using System.Collections.Generic;
  using System.ComponentModel;
  using System.ComponentModel.DataAnnotations;

  public partial class usuario
  {
    public int id { get; set; }
    public int idpersona { get; set; }
    [DisplayName("Usuario")]
    [Required(ErrorMessage = "Este campo es requerido.")]
    public string usuario1 { get; set; }
    [DisplayName("Contraseña")]
    [DataType(DataType.Password)]
    [Required(ErrorMessage = "Este campo es requerido.")]
    public string clave { get; set; }
    public string estado { get; set; }

    public string LoginErrorMessage { get; set; }
  }
}