using System;
using System.Collections.Generic;

namespace MiSegundaAplicacionWeb.Models;

public partial class Libro
{
    public int Id { get; set; }

    public string? Titulo { get; set; }

    public string? Autor { get; set; }

    public bool? Disponible { get; set; }

    public virtual ICollection<Prestamo> Prestamos { get; set; } = new List<Prestamo>();
}
