using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

namespace Practice_web
{
    public partial class ListWebForm : System.Web.UI.Page
    {
        DataTable dataTable = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
                dataTable.Columns.Add("Estado");
                dataTable.Columns.Add("F. Nacimiento");
                dataTable.Columns.Add("A. Nacimiento");
                dataTable.Columns.Add("AÑO Nacimiento");
                dataTable.Columns.Add("Correo Electronico");
                dataTable.Columns.Add("1r. Nombre");
                dataTable.Columns.Add("2do. Nombre");
                dataTable.Columns.Add("3r. Nombre");
                dataTable.Columns.Add("1r. Apellido");
                dataTable.Columns.Add("2do. Apellido");
                dataTable.Columns.Add("Apellido Casado");
                dataTable.Columns.Add("Telefono");
                dataTable.Columns.Add("Institucion");
                dataTable.Columns.Add("Telefono De Institucion");
                dataTable.Columns.Add("Actividad Economica");
                dataTable.Columns.Add("Municipio");
                dataTable.Columns.Add("Motivo");
            StreamReader streamReader = File.OpenText(Server.MapPath("Files/Certificado.txt"));
            try
            {
                while (!streamReader.EndOfStream)
                {
                    string line = streamReader.ReadLine();
                    string[] split = line.Split(new char[] { ',' });
                    dataTable.Rows.Add(split[0], split[1], split[2], split[3], split[4], split[5], split[6], split[7], split[8], split[9], split[10], split[11], split[12], split[13], split[14], split[15], split[16]);
                };
            }catch(Exception ex)
            {

            }
            finally
            {
                streamReader.Close();
            }
            dataGridView1.DataSource = dataTable;
            dataGridView1.DataBind();
        }
    }
}