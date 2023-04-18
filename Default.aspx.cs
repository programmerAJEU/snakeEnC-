using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

namespace Practice_web
{
    public partial class Default : System.Web.UI.Page
    {
        DataTable dataTableDepa = new DataTable(), dataTableMuni = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            dataTableMuni.Columns.Add("Code"); dataTableMuni.Columns.Add("Municipio");
            if (!IsPostBack)
            {
                dataTableDepa.Columns.Add("Code"); dataTableDepa.Columns.Add("Department");
                StreamReader streamReader = File.OpenText(Server.MapPath("Files/Departamento.txt"));
                string line = "";
                while ((line = streamReader.ReadLine()) != null)
                {
                    string[] split = line.Split(new char[] { ',' });
                    dataTableDepa.Rows.Add(split);
                };
                streamReader.Close();
                comboBox2.DataSource = dataTableDepa;
                comboBox2.DataTextField = dataTableDepa.Columns[1].ColumnName;
                comboBox2.DataValueField = dataTableDepa.Columns[0].ColumnName;
                comboBox2.DataBind();
            }
        }
        protected void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            dataTableMuni.Clear();
            StreamReader streamReader = File.OpenText(Server.MapPath("Files/Municipio.txt"));
            while (!streamReader.EndOfStream)
            {
                string line = streamReader.ReadLine();
                string[] split = line.Split(new char[] { ',' });
                if (string.Compare(split[2].ToString(), comboBox2.SelectedValue.ToString()).Equals(0))
                    dataTableMuni.Rows.Add(split[0], split[1]);
            };
            streamReader.Close();
            comboBox3.DataSource = dataTableMuni;
            comboBox3.DataTextField = dataTableMuni.Columns[1].ColumnName;
            comboBox3.DataValueField = dataTableMuni.Columns[0].ColumnName;
            comboBox3.DataBind();
        }
        protected void send_Click(object sender, EventArgs e)
        {
                StreamWriter streamWriter = File.AppendText(Server.MapPath("Files/Certificado.txt"));
                try
                {
                    streamWriter.WriteLine($"{state.Text},{dpi.Text},{TextBox1.Text},{TextBox2.Text},{TextBox3.Text},{TextBox4.Text},{TextBox5.Text},{TextBox6.Text},{TextBox7.Text},{TextBox8.Text},{TextBox9.Text},{TextBox10.Text},{TextBox11.Text},{TextBox12.Text},{TextBox13.Text},{comboBox3.SelectedItem},{motivo.Text}");
                }
                catch( Exception ex)
                {

                }
                finally
                {
                    streamWriter.Close();Clear();
                }
        }
        protected void Clear() => dpi.Text = TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = TextBox6.Text = TextBox7.Text = TextBox8.Text = TextBox9.Text = TextBox10.Text = TextBox11.Text = TextBox12.Text = TextBox13.Text = String.Empty;
    }
}