using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

namespace WebApplicationLaboratorio9
{
    public partial class _Default : Page
    {
        static List<Alumno> alumnos = new List<Alumno>();
        static List<int> pipip = new List<int>();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int notas = Convert.ToInt16(TextBox7Nota.Text);
            pipip.Add(notas);
            GridView1.DataSource = pipip;
            GridView1.DataBind();
        }

        private void Guardar()
        {
            string json = JsonConvert.SerializeObject(alumnos);
            string arch = Server.MapPath("guardardatos.json");
            System.IO.File.WriteAllText(arch, json);
        }

        protected void ButtonGuardartodo_Click(object sender, EventArgs e)
        {
            Alumno alumno = new Alumno();
            alumno.nombre = TextBoxNombre.Text;
            alumno.apellido = TextBoxApellido.Text;
            alumno.direccion = TextBoxDireccion.Text;
            alumno.nacimiento = CalendarNacimiento.SelectedDate;
            alumno.edad = Convert.ToInt32(TextBoxEdad.Text);
            alumno.carnet = TextBoxCarne.Text;
            alumno.notas = TextBox7Nota.Text;

            alumnos.Add(alumno);
            Guardar();
            pipip.Clear();
        }
    }
}