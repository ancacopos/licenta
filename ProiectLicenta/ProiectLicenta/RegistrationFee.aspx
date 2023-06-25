<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationFee.aspx.cs" Inherits="ProiectLicenta.RegistrationFee" %>
<%@ Import Namespace="MySqlConnector" %>
<%@ Import Namespace="System" %>
<%@ Import Namespace="System.Data" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Romanian Open Championship | 2023</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <link href="css/pricing.css" rel="stylesheet" />
        <link href="css/bootstrap.min.css" rel="stylesheet" />

        <script language="C#" runat="server">
            protected void Page_Load(object sender, EventArgs e)
            {
                if (!IsPostBack)
                {
                    DataTable dataTable = GetTableData();
                    myGridView.DataSource = dataTable;
                    myGridView.DataBind();
                }
            }

            protected DataTable GetTableData()
            {
                DataTable dataTable = new DataTable();
                string connString = "Server=roc.mysql.database.azure.com;UserID=anca;Password=04062016Aa;Database=roc;SslMode=Required;SslCa=C:\\Users\\Anca\\Downloads\\DigiCertGlobalRootCA.crt.pem;Connection Timeout=60;";

                try
                {
                    using (var connection = new MySqlConnection(connString))
                    {
                        connection.Open();
                        string query = "SELECT * FROM competition";
                        using (var command = new MySqlCommand(query, connection))
                        {
                            using (var adapter = new MySqlDataAdapter(command))
                            {
                                adapter.Fill(dataTable);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                }
                dataTable.Columns.Remove("email");
                return dataTable;
            }
            void RedirectBtn_Click(Object sender, EventArgs e)
            {
                Response.Redirect("Form.aspx");
            }
        </script>

    </head>
    <body class="d-flex flex-column">
        <main class="flex-shrink-0">
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container px-5">
                    <a class="navbar-brand" href="index.aspx"><img class="navbar-brand" src="https://i.imgur.com/Um6AhHy.png" /> </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                            <li class="nav-item"><a class="nav-link" href="Index.aspx">Home</a></li>
                            <li class="nav-item"><a class="nav-link" href="Competition.aspx">Competition info</a></li>
                            <li class="nav-item"><a class="nav-link" href="Camp.aspx">Camp info</a></li>
                            <li class="nav-item"><a class="nav-link" href="RegistrationFee.aspx">Registrations</a></li>
                            <li class="nav-item"><a class="nav-link" href="Gallery.aspx">Gallery</a></li>
                            <li class="nav-item"><a class="nav-link" href="Contact.aspx">Contact</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <section class="bg-light py-5">
                <div class="container px-5 my-5">
                    <div class="text-center mb-5">
                        <h1 class="fw-bolder">Competition Registration Fee</h1>
                        <p class="lead fw-normal text-muted mb-0">Don't miss the deadline: September 3, 2023, 23:59 (Bucharest time) </p>
                    </div>
                    <div class="card-deck mb-3 text-center">
                        <div class="card mb-4 box-shadow">
                            <div class="card-header">
                                <h4 class="my-0 font-weight-normal">Basic Categories</h4>
                            </div>
                            <div class="card-body">
                                <h1 class="card-title pricing-card-title">40€ <small class="text-muted">/ couple</small></h1>
                                <ul class="list-unstyled mt-3 mb-4">
                                    <li>Basic Only 6 Dance</li>
                                    <li>Basic Juvenile I+II </li>
                                    <li>Basic Junior </li>
                                    <li>Basic Youth+Adult</li>

                                </ul>
                            </div>
                        </div>
                        <div class="card mb-4 box-shadow">
                            <div class="card-header">
                                <h4 class="my-0 font-weight-normal">International Categories</h4>
                            </div>
                            <div class="card-body">
                                <h1 class="card-title pricing-card-title">45€ <small class="text-muted">/ couple</small></h1>
                                <ul class="list-unstyled mt-3 mb-4">
                                    <li>International OPEN Juvenile</li>
                                    <li>International OPEN Junior</li>
                                    <li>WDSF Youth</li>
                                </ul>
                            </div>
                        </div>
                        <div class="card mb-4 box-shadow">
                            <div class="card-header">
                                <h4 class="my-0 font-weight-normal">World Open Categories</h4>
                            </div>
                            <div class="card-body">
                                <h1 class="card-title pricing-card-title">50€ <small class="text-muted">/ couple</small></h1>
                                <ul class="list-unstyled mt-3 mb-4">
                                    <li>WDSF WORLD Open ST/LA</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="container px-5 my-5">
                    <div class="text-center mb-5">
                        <h1 class="fw-bolder">Training Camp Registration Fee</h1>
                        <p class="lead fw-normal text-muted mb-0">Don't miss the deadline: September 10, 2023, 23:59 (Bucharest time) </p>
                    </div>
                    <div class="card-deck mb-3 text-center">
                        <div class="card mb-4 box-shadow">
                            <div class="card-header">
                                <h4 class="my-0 font-weight-normal">Standard</h4>
                            </div>
                            <div class="card-body">
                                <h1 class="card-title pricing-card-title">100€ <small class="text-muted">/ couple</small></h1>
                                <ul class="list-unstyled mt-3 mb-4">
                                    <li>1 hour of physical preparation / day</li>
                                    <li>3 hours of group lessons / day</li>
                                    <li>2 hours of supervised practice / day</li>

                                </ul>
                            </div>
                        </div>
                        <div class="card mb-4 box-shadow">
                            <div class="card-header">
                                <h4 class="my-0 font-weight-normal">Latin</h4>
                            </div>
                            <div class="card-body">
                                <h1 class="card-title pricing-card-title">100€ <small class="text-muted">/ couple</small></h1>
                                <ul class="list-unstyled mt-3 mb-4">
                                    <li>1 hour of physical preparation / day</li>
                                    <li>3 hours of group lessons / day</li>
                                    <li>2 hours of supervised practice / day</li>
                                </ul>
                            </div>
                        </div>
                        <div class="card mb-4 box-shadow">
                            <div class="card-header">
                                <h4 class="my-0 font-weight-normal">Ten Dances</h4>
                            </div>
                            <div class="card-body">
                                <h1 class="card-title pricing-card-title">140€ <small class="text-muted">/ couple</small></h1>
                                <ul class="list-unstyled mt-3 mb-4">
                                    <li>1 hour of physical preparation / day</li>
                                    <li>6 hours of group lessons / day</li>
                                    <li>2 hours of supervised practice / day</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <form id="form1" runat="server">
                        <asp:Button id="Redirect" Text="Register Now" OnClick="RedirectBtn_Click"  CssClass="btn btn-lg btn-block btn-outline-primary" runat="server" />

                        <br />
                        <div class="text-center mb-5">
                            <h3 class="fw-bolder">Registered couples</h3>
                        </div>
                        <div>
                            <asp:GridView ID="myGridView" runat="server" AutoGenerateColumns="true"></asp:GridView>
                        </div>
                    </form>
                </div>
            </section>
        </main>
        <footer class="bg-dark py-4 mt-auto">
            <div class="container px-5">
                <div class="row align-items-center justify-content-between flex-column flex-sm-row">
                    
                </div>
            </div>
        </footer>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>
