<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ProiectLicenta.Contact" %>
<%@ Import Namespace="System" %>
<%@ Import Namespace="System.Collections.Generic" %>
<%@ Import Namespace="System.Linq" %>
<%@ Import Namespace="System.Net" %>
<%@ Import Namespace="System.Net.Mail" %>
<%@ Import Namespace="System.Web" %>
<%@ Import Namespace="System.Web.UI" %>
<%@ Import Namespace="System.Web.UI.WebControls" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" />
        <meta name="author" />
        <title>Romanian Open Championship | 2023</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
        <link href="css/styles.css" rel="stylesheet" />

        <script language="C#" runat="server">
            protected void trimiteBtn_Click(object sender, EventArgs e)
            {
                bool ok = true;
                string error_message = "";
                DateTime currentDateTime = DateTime.Now;
                var from = new MailAddress("ps.alca2022@gmail.com");
                var to = new MailAddress("anca.copos01@gmail.com");

                if(FirstNameTxtbox.Text.Length == 0 || LastNameTxtbox.Text.Length == 0 || EmailTxtbox.Text.Length == 0 || PhoneTxtbox.Text.Length == 0 || MessageTxtBox.Text.Length == 0)
                {
                    ok = false;
                    error_message = "empty_fields";
                }
                if(ok==true && (!EmailTxtbox.Text.ToString().Contains("@") || !EmailTxtbox.Text.ToString().Split('@')[1].Contains(".")))
                {
                    ok = false;
                    error_message = "not_valid_email";
                }

                if(ok==true && !PhoneTxtbox.Text.ToString().All(char.IsDigit))
                {
                    ok = false;
                    error_message = "not_valid_phone";
                }

                if (!ok)
                {
                    if(error_message == "empty_fields")
                        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('All fields must be filled before submitting the form.');", true);
                    else if(error_message == "not_valid_email")
                        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('The e-mail must follow this structure : some.text@web.domain.');", true);
                    else if(error_message == "not_valid_phone")
                        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('The phone number must contain only digits from 0 to 9.');", true);

                }
                else
                {
                    using (MailMessage mail = new MailMessage(from, to))
                    {
                    mail.Subject = "Formular Contact - " + EmailTxtbox.Text.ToString() + " - " + currentDateTime.ToString();
                    mail.Body = "Nume expeditor : " + FirstNameTxtbox.Text.ToString() + " " + LastNameTxtbox.Text.ToString() + "\nNumar de telefon : " + PhoneTxtbox.Text.ToString() +  "\nMesaj : " + MessageTxtBox.Text;
                    mail.IsBodyHtml = false;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.EnableSsl = true;
                    NetworkCredential networkCredential = new NetworkCredential(from.Address, "tzlctmqkuidjmwih");
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = networkCredential;
                    smtp.Port = 587;
                    smtp.Send(mail);
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('E-mailul a fost trimis cu succes.');", true);
                    FirstNameTxtbox.Text = "";
                    LastNameTxtbox.Text = "";
                    EmailTxtbox.Text = "";
                    PhoneTxtbox.Text = "";
                    MessageTxtBox.Text = "";
                    }
                }
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
            <section class="py-5">
                <div class="container px-5">
                    <div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
                        <div class="text-center mb-5">
                            <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-envelope"></i></div>
                            <h1 class="fw-bolder">Get in touch</h1>
                            <p class="lead fw-normal text-muted mb-0">If you need accomodation or any other info please don't hesitate to contact us.</p>
                        </div>
                        <div class="row gx-5 justify-content-center">
                            <div class="col-lg-8 col-xl-6">
                                <form id="contactForm" runat="server">
                                    <div class="row gx-5 align-items-center">
                                        <div class="col-lg-6">
                                            <div class="form-floating mb-3">
                                                <asp:TextBox ID="FirstNameTxtbox" runat="server" CssClass="form-control"></asp:TextBox>
                                                <label for="FirstNameTxtbox">First name</label>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-floating mb-3">
                                                <asp:TextBox ID="LastNameTxtbox" runat="server" CssClass="form-control"></asp:TextBox>
                                                <label for="LastNameTxtbox">Last name</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-floating mb-3">
                                        <asp:TextBox ID="EmailTxtbox" runat="server" CssClass="form-control"></asp:TextBox>
                                        <label for="EmailTxtbox">E-mail</label>
                                    </div>
                                    <div class="form-floating mb-3">
                                        <asp:TextBox ID="PhoneTxtbox" runat="server" CssClass="form-control"></asp:TextBox>
                                        <label for="PhoneTxtbox">Phone number</label>
                                    </div>
                                    <div class="form-floating mb-3">
                                        <asp:TextBox ID="MessageTxtBox" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="12" Style="height: 150px;"></asp:TextBox>
                                        <label for="MessageTxtBox">Message</label>
                                        <div class="invalid-feedback" data-sb-feedback="message:required">A message is required.</div>
                                    </div>
                                    <div class="d-grid"><asp:Button id="SendBtn" CssClass="btn btn-primary btn-lg" text="Submit" runat="server" OnClick="trimiteBtn_Click"/></div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="row gx-5 row-cols-2 row-cols-lg-4 py-7">
                        <div class="col">
                            <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi-geo-alt"></i></div>
                            <div class="h5">Address</div>
                            <p class="text-muted mb-0">Splaiul Tudor Vladimirescu nr.44, Timisoara, jud. Timis, Romania</p>
                        </div>
                        <div class="col">
                            <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-telephone"></i></div>
                            <div class="h5">Call us</div>
                            <p class="text-muted mb-0">For any further questions please contact us at this phone number: +40728949596.</p>
                        </div>
                    </div>
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
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
</html>