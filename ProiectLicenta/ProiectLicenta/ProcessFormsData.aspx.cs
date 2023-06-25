using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySqlConnector;

namespace ProiectLicenta
{
    public partial class ProcessFormsData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod, ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = false)]
        public static void CompetitionData(string male_firstname, string male_lastname, string male_id, string female_firstname, string female_lastname, string female_id, string country, string category, string email)
        {
            string connString = "Server=roc.mysql.database.azure.com;UserID=anca;Password=04062016Aa;Database=roc;SslMode=Required;SslCa=C:\\Users\\Anca\\Downloads\\DigiCertGlobalRootCA.crt.pem;Connection Timeout=60;";
            using (MySqlConnection connection = new MySqlConnection(connString))
            {
                try
                {
                    connection.Open();
                    using (var command = connection.CreateCommand())
                    {
                        command.CommandText = @"INSERT INTO competition VALUES (@male_firstname, @male_lastname, @male_id, @female_firstname, @female_lastname, @female_id, @country, @categories, @email);";
                        command.Parameters.AddWithValue("@male_firstname", male_firstname);
                        command.Parameters.AddWithValue("@male_lastname", male_lastname);
                        command.Parameters.AddWithValue("@male_id", male_id);
                        command.Parameters.AddWithValue("@female_firstname", female_firstname);
                        command.Parameters.AddWithValue("@female_lastname", female_lastname);
                        command.Parameters.AddWithValue("@female_id", female_id);
                        command.Parameters.AddWithValue("@country", country);
                        command.Parameters.AddWithValue("@categories", category);
                        command.Parameters.AddWithValue("@email", email);

                        command.ExecuteNonQuery();
                    }
                }

                catch (Exception ex)
                {
                    // Handle the exception
                    Console.WriteLine("Error: " + ex.Message);
                }

            }
        }


        [WebMethod, ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = false)]
        public static void CampData(string male_firstname, string male_lastname, string female_firstname, string female_lastname, string country, string section, string hours, string email)
        {

            string connString = "Server=roc.mysql.database.azure.com;UserID=anca;Password=04062016Aa;Database=roc;SslMode=Required;SslCa=C:\\Users\\Anca\\Downloads\\DigiCertGlobalRootCA.crt.pem;Connection Timeout=60;";

            using (MySqlConnection connection = new MySqlConnection(connString))
            {
                try
                {
                    connection.Open();
                    using (var command = connection.CreateCommand())
                    {
                        command.CommandText = @"INSERT INTO camp VALUES (@male_firstname, @male_lastname, @female_firstname, @female_lastname, @country, @section, @hours, @email);";
                        command.Parameters.AddWithValue("@male_firstname", male_firstname);
                        command.Parameters.AddWithValue("@male_lastname", male_lastname);
                        command.Parameters.AddWithValue("@female_firstname", female_firstname);
                        command.Parameters.AddWithValue("@female_lastname", female_lastname);
                        command.Parameters.AddWithValue("@country", country);
                        command.Parameters.AddWithValue("@section", section);
                        command.Parameters.AddWithValue("@hours", hours);
                        command.Parameters.AddWithValue("@email", email);

                        command.ExecuteNonQuery();
                    }
                }

                catch (Exception ex)
                {
                    // Handle the exception
                    Console.WriteLine("Error: " + ex.Message);
                }

            }
        }




    }
}