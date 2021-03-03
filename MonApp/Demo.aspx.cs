using System;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace WebFormTuto
{
    public partial class Demo : System.Web.UI.Page
    {

        SqlConnection cnn;

        protected void Page_Load(object sender, EventArgs e)
        {
            string connexionString;

            connexionString = @"Server=DESKTOP-S1RQA1N\SQLEXPRESS;Trusted_Connection=True;Database=asplily ;User ID=lily;Password=1234";

            cnn = new SqlConnection(connexionString);

            cnn.Open();

            Response.Write("Connexion Réussie");
            cnn.Close();



            cnn.Close();

        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //Session["Name"] = txtName.Text;

            cnn.Open();

            SqlCommand command;
            SqlDataReader dataReader;
            String sql, Output = " ";
            sql = "Select TutorialID,TutorialName from demotbb order by len([TutorialID]), [TutorialID]";

            command = new SqlCommand(sql, cnn);

            dataReader = command.ExecuteReader();
            while (dataReader.Read())
            {
                Output = Output + dataReader.GetValue(0) + "-" + dataReader.GetValue(1) + "</br>";
            }

            Response.Write(Output);
            dataReader.Close();
            command.Dispose();

            cnn.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cnn.Open();

            SqlCommand command;
            SqlDataAdapter adapter = new SqlDataAdapter();
            String sql = "Insert into demotbb(TutorialID,TutorialName) values (" + txtId.Text + ",  " + "'" + txtName.Text + "'" + ")";

            command = new SqlCommand(sql, cnn);

            adapter.InsertCommand = command;
            adapter.InsertCommand.ExecuteNonQuery();

            command.Dispose();

            cnn.Close();


            btnSubmit_Click(sender, e);

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            cnn.Open();

            SqlCommand command;
            SqlDataAdapter adapter = new SqlDataAdapter();
            String sql = "Update demotbb set TutorialName = '" + "VB.Net Complete" + "' where TutorialID = 3";

            command = new SqlCommand(sql, cnn);

            adapter.InsertCommand = command;
            adapter.InsertCommand.ExecuteNonQuery();

            command.Dispose();

            cnn.Close();


            btnSubmit_Click(sender, e);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //SqlDataSource1.Update();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
