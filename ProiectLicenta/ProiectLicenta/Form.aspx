<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="ProiectLicenta.Form" %>
<%@ Import Namespace="System" %>
<%@ Import Namespace="System.Threading.Tasks" %>
<%@ Import Namespace="MySqlConnector" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Romanian Open Championship | 2023</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <link href="css/styles.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link href="css/bootstrap-register.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

        <script runat="server">
            protected void Page_Load(object sender, EventArgs e)
            {
                if (IsPostBack)
                {
                    string selectedOption = Request.Form["option"];
                    // Access other form fields using Request.Form

                    if (selectedOption == "Competition")
                    {
                        string text1 = Request.Form["text1"];
                        string text2 = Request.Form["text2"];
                        string text3 = Request.Form["text3"];

                        // Handle the values for option 1
                    }
                    else if (selectedOption == "Camp")
                    {
                        bool checkbox1 = Request.Form["checkbox1"] == "on";
                        bool checkbox2 = Request.Form["checkbox2"] == "on";
                        bool checkbox3 = Request.Form["checkbox3"] == "on";

                        // Handle the values for option 2
                    }
                    else if (selectedOption == "CompetitionAndCamp")
                    {
                        string text1 = Request.Form["text1"];
                        string text2 = Request.Form["text2"];
                        string text3 = Request.Form["text3"];

                        bool checkbox1 = Request.Form["checkbox1"] == "on";
                        bool checkbox2 = Request.Form["checkbox2"] == "on";
                        bool checkbox3 = Request.Form["checkbox3"] == "on";

                        // Handle the values for option 3
                    }
                }
            }

            protected void trimiteBtn_Click(object sender, EventArgs e)
            {
                if (IsPostBack)
                {
                    string selectedOption = Request.Form["option"];

                    if (selectedOption == "Competition")
                    {
                        string male_firstname = Request.Form["male_firstname"];
                        string male_lastname = Request.Form["male_lastname"];
                        string male_id = Request.Form["male_id"];

                        string female_firstname = Request.Form["female_firstname"];
                        string female_lastname = Request.Form["female_lastname"];
                        string female_id = Request.Form["female_id"];

                        string country = Request.Form["country"];

                        string category = "";

                        if (Request.Form["basic6dancesjuvenile1"] == "on")
                            category = category + Request.Form["basic6dancesjuvenile1"] + ", ";
                        if (Request.Form["basicjuvenilest1"] == "on")
                            category = category + Request.Form["basicjuvenilest1"] + ", ";
                        if (Request.Form["basicjuvenilela1"] == "on")
                            category = category + Request.Form["basicjuvenilela1"] + ", ";
                        if (Request.Form["intjuvenile1st"] == "on")
                            category = category + Request.Form["intjuvenile1st"] + ", ";
                        if (Request.Form["intjuvenile1la"] == "on")
                            category = category + Request.Form["intjuvenile1la"] + ", ";
                        if (Request.Form["intjuvenile2st1"] == "on")
                            category = category + Request.Form["intjuvenile2st1"] + ", ";
                        if (Request.Form["intjuvenile2la1"] == "on")
                            category = category + Request.Form["intjuvenile2la1"] + ", ";


                        if (Request.Form["basic6dancesjuvenile2"] == "on")
                            category = category + Request.Form["basic6dancesjuvenile2"] + ", ";
                        if (Request.Form["basicjuvenilest2"] == "on")
                            category = category + Request.Form["basicjuvenilest2"] + ", ";
                        if (Request.Form["basicjuvenilela2"] == "on")
                            category = category + Request.Form["basicjuvenilela2"] + ", ";
                        if (Request.Form["intjuvenile2st2"] == "on")
                            category = category + Request.Form["intjuvenile2st2"] + ", ";
                        if (Request.Form["intjuvenile2la2"] == "on")
                            category = category + Request.Form["intjuvenile2la2"] + ", ";


                        if (Request.Form["basic6dancesjunior2"] == "on")
                            category = category + Request.Form["basic6dancesjunior2"] + ", ";
                        if (Request.Form["basic6dancesjunior21"] == "on")
                            category = category + Request.Form["basic6dancesjunior21"] + ", ";
                        if (Request.Form["basicjunior1st"] == "on")
                            category = category + Request.Form["basicjunior1st"] + ", ";
                        if (Request.Form["basicjunior1la"] == "on")
                            category = category + Request.Form["basicjunior1la"] + ", ";
                        if (Request.Form["basicjunior2st1"] == "on")
                            category = category + Request.Form["basicjunior2st1"] + ", ";
                        if (Request.Form["basicjunior2la1"] == "on")
                            category = category + Request.Form["basicjunior2la1"] + ", ";
                        if (Request.Form["intjunior1st"] == "on")
                            category = category + Request.Form["intjunior1st"] + ", ";
                        if (Request.Form["intjunior1la"] == "on")
                            category = category + Request.Form["intjunior1la"] + ", ";
                        if (Request.Form["intjunior2st1"] == "on")
                            category = category + Request.Form["intjunior2st1"] + ", ";
                        if (Request.Form["intjunior2la1"] == "on")
                            category = category + Request.Form["intjunior2la1"] + ", ";


                        if (Request.Form["basic6dancesjunior22"] == "on")
                            category = category + Request.Form["basic6dancesjunior22"] + ", ";
                        if (Request.Form["basicjunior2st1"] == "on")
                            category = category + Request.Form["basicjunior2st1"] + ", ";
                        if (Request.Form["basicjunior2la1"] == "on")
                            category = category + Request.Form["basicjunior2la1"] + ", ";
                        if (Request.Form["intjunior2st1"] == "on")
                            category = category + Request.Form["intjunior2st1"] + ", ";
                        if (Request.Form["intjunior2la1"] == "on")
                            category = category + Request.Form["intjunior2la1"] + ", ";


                        if (Request.Form["basicyouthst1"] == "on")
                            category = category + Request.Form["basicyouthst1"] + ", ";
                        if (Request.Form["basicyouthla1"] == "on")
                            category = category + Request.Form["basicyouthla1"] + ", ";
                        if (Request.Form["intyouthst"] == "on")
                            category = category + Request.Form["intyouthst"] + ", ";
                        if (Request.Form["intyouthLA"] == "on")
                            category = category + Request.Form["intyouthLA"] + ", ";
                        if (Request.Form["worldopenst1"] == "on")
                            category = category + Request.Form["worldopenst1"] + ", ";
                        if (Request.Form["worldopenla1"] == "on")
                            category = category + Request.Form["worldopenla1"] + ", ";


                        if (Request.Form["basicyouthst2"] == "on")
                            category = category + Request.Form["basicyouthst2"] + ", ";
                        if (Request.Form["basicyouthla2"] == "on")
                            category = category + Request.Form["basicyouthla2"] + ", ";
                        if (Request.Form["worldopenst2"] == "on")
                            category = category + Request.Form["worldopenst2"] + ", ";
                        if (Request.Form["worldopenla2"] == "on")
                            category = category + Request.Form["worldopenla2"] + ", ";
                        if (Request.Form["worldopenst1"] == "on")
                            category = category + Request.Form["worldopenst1"] + ", ";

                        string email = Request.Form["id_email"];

                        string connectionString = "Server=roc.mysql.database.azure.com;Database=roc;Uid=anca;Pwd=04062016Aa;";


                        using (MySqlConnection connection = new MySqlConnection(connectionString))
                        {
                            connection.Open();

                            string insertQuery = "INSERT INTO competition VALUES (@male_firstname, @male_lastname, @male_id, @female_firstname, @female_lastname, @female_id, @country, @categories, @email);";

                            using (MySqlCommand command = new MySqlCommand(insertQuery, connection))
                            {
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

                        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('You registered successfully!');", true);

                    }
                }
            }

        </script>
    </head>
    <body class="d-flex flex-column h-100">
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
                <div class="container px-5 my-5">



                    <div class="container">
                        <div id="signupbox" style="margin-top: 50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                            <div class="panel panel-info">
                                <div class="panel-heading">
                                    <div class="panel-title">Register now</div>
                                </div>
                                <div class="panel-body">
                                    <form id="myForm" runat="server">
                                        <asp:ScriptManager runat="server" EnablePageMethods="true"></asp:ScriptManager>
                                        <label for="id_select"  class="control-label col-md-4  requiredField"> Please select your option<span class="asteriskField">*</span> </label>
                                        <div>
                                            <input type="radio" name="option" value="Competition"> Competition&nbsp;
                                            <input type="radio" name="option" value="Camp"> Camp&nbsp;
                                        </div>

                                        <br /><br />

                                        <div id="fieldContainer">
                                        </div>

                                        <br /><br />
                                    </form>


                                    <form onsubmit="submitForm(); return false;">
                                        <div class="d-grid"><button type="submit" class="btn btn-primary">Submit form</button></div>
                                    </form>


                                    
                                </div>
                            </div>
                        </div>
                    </div>
                   

                    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
                    <script>
                        $(document).ready(function () {
                            $('input[type=radio][name=option]').change(function () {
                                var selectedOption = $(this).val();
                                var fieldContainer = $('#fieldContainer');

                                fieldContainer.empty();

                                if (selectedOption === 'Competition') {
                                    fieldContainer.append('<label for="male_firstname" class="control-label col-md-4  requiredField"> Male First Name </label>');
                                    fieldContainer.append('<input type="text" id="male_firstname" name="MaleFirstName"><br /><br />');
                                    fieldContainer.append('<label for="male_lastname" class="control-label col-md-4  requiredField"> Male Last Name </label>');
                                    fieldContainer.append('<input type="text" id="male_lastname" name="MaleLastName"><br /><br />');
                                    fieldContainer.append('<label for="male_id" class="control-label col-md-4  requiredField"> Male ID (MIN) </label>');
                                    fieldContainer.append('<input type="text" id="male_id" name="MaleID"><br /><br /><br />');

                                    fieldContainer.append('<label for="female_firstname" class="control-label col-md-4  requiredField"> Female First Name </label>');
                                    fieldContainer.append('<input type="text" id="female_firstname" name="FemaleFirstName"><br /><br />');
                                    fieldContainer.append('<label for="female_lastname" class="control-label col-md-4  requiredField"> Female Last Name </label>');
                                    fieldContainer.append('<input type="text" id="female_lastname" name="FemaleLastName"><br /><br />');
                                    fieldContainer.append('<label for="female_id" class="control-label col-md-4  requiredField"> Female ID (MIN) </label>');
                                    fieldContainer.append('<input type="text" id="female_id" name="FemaleID"><br /><br />');

                                    fieldContainer.append('<label for="country" class="control-label col-md-4  requiredField"> Country </label>');
                                    fieldContainer.append("<select id='country' name='country'>\
                                    <option value='choose' disabled selected>Choose country</option>\
                                    <option value='Afghanistan'>Afghanistan</option>\
                                    <option value='Aland Islands'>Aland Islands</option>\
                                    <option value='Albania'>Albania</option>\
                                    <option value='Algeria'>Algeria</option>\
                                    <option value='American Samoa'>American Samoa</option>\
                                    <option value='Andorra'>Andorra</option>\
                                    <option value='Angola'>Angola</option>\
                                    <option value='Anguilla'>Anguilla</option>\
                                    <option value='Antarctica'>Antarctica</option>\
                                    <option value='Antigua and Barbuda'>Antigua and Barbuda</option>\
                                    <option value='Argentina'>Argentina</option>\
                                    <option value='Armenia'>Armenia</option>\
                                    <option value='Aruba'>Aruba</option>\
                                    <option value='Australia'>Australia</option>\
                                    <option value='Austria'>Austria</option>\
                                    <option value='Azerbaijan'>Azerbaijan</option>\
                                    <option value='Bahamas'>Bahamas</option>\
                                    <option value='Bahrain'>Bahrain</option>\
                                    <option value='Bangladesh'>Bangladesh</option>\
                                    <option value='Barbados'>Barbados</option>\
                                    <option value='Belarus'>Belarus</option>\
                                    <option value='Belgium'>Belgium</option>\
                                    <option value='Belize'>Belize</option>\
                                    <option value='Benin'>Benin</option>\
                                    <option value='Bermuda'>Bermuda</option>\
                                    <option value='Bhutan'>Bhutan</option>\
                                    <option value='Bolivia'>Bolivia</option>\
                                    <option value='Bonaire, Sint Eustatius and Saba'>Bonaire, Sint Eustatius and Saba</option>\
                                    <option value='Bosnia and Herzegovina'>Bosnia and Herzegovina</option>\
                                    <option value='Botswana'>Botswana</option>\
                                    <option value='Bouvet Island'>Bouvet Island</option>\
                                    <option value='Brazil'>Brazil</option>\
                                    <option value='British Indian Ocean Territory'>British Indian Ocean Territory</option>\
                                    <option value='Brunei Darussalam'>Brunei Darussalam</option>\
                                    <option value='Bulgaria'>Bulgaria</option>\
                                    <option value='Burkina Faso'>Burkina Faso</option>\
                                    <option value='Burundi'>Burundi</option>\
                                    <option value='Cambodia'>Cambodia</option>\
                                    <option value='Cameroon'>Cameroon</option>\
                                    <option value='Canada'>Canada</option>\
                                    <option value='Cape Verde'>Cape Verde</option>\
                                    <option value='Cayman Islands'>Cayman Islands</option>\
                                    <option value='Central African Republic'>Central African Republic</option>\
                                    <option value='Chad'>Chad</option>\
                                    <option value='Chile'>Chile</option>\
                                    <option value='China'>China</option>\
                                    <option value='Christmas Island'>Christmas Island</option>\
                                    <option value='Cocos (Keeling) Islands'>Cocos (Keeling) Islands</option>\
                                    <option value='Colombia'>Colombia</option>\
                                    <option value='Comoros'>Comoros</option>\
                                    <option value='Congo'>Congo</option>\
                                    <option value='Congo, Democratic Republic of the Congo'>Congo, Democratic Republic of the Congo</option>\
                                    <option value='Cook Islands'>Cook Islands</option>\
                                    <option value='Costa Rica'>Costa Rica</option>\
                                    <option value='Cote D'Ivoire'>Cote D'Ivoire</option >\
                                    <option value='Croatia'>Croatia</option>\
                                    <option value='Cuba'>Cuba</option>\
                                    <option value='Curacao'>Curacao</option>\
                                    <option value='Cyprus'>Cyprus</option>\
                                    <option value='Czech Republic'>Czech Republic</option>\
                                    <option value='Denmark'>Denmark</option>\
                                    <option value='Djibouti'>Djibouti</option>\
                                    <option value='Dominica'>Dominica</option>\
                                    <option value='Dominican Republic'>Dominican Republic</option>\
                                    <option value='Ecuador'>Ecuador</option>\
                                    <option value='Egypt'>Egypt</option>\
                                    <option value='El Salvador'>El Salvador</option>\
                                    <option value='Equatorial Guinea'>Equatorial Guinea</option>\
                                    <option value='Eritrea'>Eritrea</option>\
                                    <option value='Estonia'>Estonia</option>\
                                    <option value='Ethiopia'>Ethiopia</option>\
                                    <option value='Falkland Islands (Malvinas)'>Falkland Islands (Malvinas)</option>\
                                    <option value='Faroe Islands'>Faroe Islands</option>\
                                    <option value='Fiji'>Fiji</option>\
                                    <option value='Finland'>Finland</option>\
                                    <option value='France'>France</option>\
                                    <option value='French Guiana'>French Guiana</option>\
                                    <option value='French Polynesia'>French Polynesia</option>\
                                    <option value='French Southern Territories'>French Southern Territories</option>\
                                    <option value='Gabon'>Gabon</option>\
                                    <option value='Gambia'>Gambia</option>\
                                    <option value='Georgia'>Georgia</option>\
                                    <option value='Germany'>Germany</option>\
                                    <option value='Ghana'>Ghana</option>\
                                    <option value='Gibraltar'>Gibraltar</option>\
                                    <option value='Greece'>Greece</option>\
                                    <option value='Greenland'>Greenland</option>\
                                    <option value='Grenada'>Grenada</option>\
                                    <option value='Guadeloupe'>Guadeloupe</option>\
                                    <option value='Guam'>Guam</option>\
                                    <option value='Guatemala'>Guatemala</option>\
                                    <option value='Guernsey'>Guernsey</option>\
                                    <option value='Guinea'>Guinea</option>\
                                    <option value='Guinea-Bissau'>Guinea-Bissau</option>\
                                    <option value='Guyana'>Guyana</option>\
                                    <option value='Haiti'>Haiti</option>\
                                    <option value='Heard Island and Mcdonald Islands'>Heard Island and Mcdonald Islands</option>\
                                    <option value='Holy See (Vatican City State)'>Holy See (Vatican City State)</option>\
                                    <option value='Honduras'>Honduras</option>\
                                    <option value='Hong Kong'>Hong Kong</option>\
                                    <option value='Hungary'>Hungary</option>\
                                    <option value='Iceland'>Iceland</option>\
                                    <option value='India'>India</option>\
                                    <option value='Indonesia'>Indonesia</option>\
                                    <option value='Iran, Islamic Republic of'>Iran, Islamic Republic of</option>\
                                    <option value='Iraq'>Iraq</option>\
                                    <option value='Ireland'>Ireland</option>\
                                    <option value='Isle of Man'>Isle of Man</option>\
                                    <option value='Israel'>Israel</option>\
                                    <option value='Italy'>Italy</option>\
                                    <option value='Jamaica'>Jamaica</option>\
                                    <option value='Japan'>Japan</option>\
                                    <option value='Jersey'>Jersey</option>\
                                    <option value='Jordan'>Jordan</option>\
                                    <option value='Kazakhstan'>Kazakhstan</option>\
                                    <option value='Kenya'>Kenya</option>\
                                    <option value='Kiribati'>Kiribati</option>\
                                    <option value='Kosovo'>Kosovo</option>\
                                    <option value='Kuwait'>Kuwait</option>\
                                    <option value='Kyrgyzstan'>Kyrgyzstan</option>\
                                    <option value='Lao People's Democratic Republic'>Lao People's Democratic Republic</option >\
                                    <option value='Latvia'>Latvia</option>\
                                    <option value='Lebanon'>Lebanon</option>\
                                    <option value='Lesotho'>Lesotho</option>\
                                    <option value='Liberia'>Liberia</option>\
                                    <option value='Libyan Arab Jamahiriya'>Libyan Arab Jamahiriya</option>\
                                    <option value='Liechtenstein'>Liechtenstein</option>\
                                    <option value='Lithuania'>Lithuania</option>\
                                    <option value='Luxembourg'>Luxembourg</option>\
                                    <option value='Macao'>Macao</option>\
                                    <option value='Macedonia, the Former Yugoslav Republic of'>Macedonia, the Former Yugoslav Republic of</option>\
                                    <option value='Madagascar'>Madagascar</option>\
                                    <option value='Malawi'>Malawi</option>\
                                    <option value='Malaysia'>Malaysia</option>\
                                    <option value='Maldives'>Maldives</option>\
                                    <option value='Mali'>Mali</option>\
                                    <option value='Malta'>Malta</option>\
                                    <option value='Marshall Islands'>Marshall Islands</option>\
                                    <option value='Martinique'>Martinique</option>\
                                    <option value='Mauritania'>Mauritania</option>\
                                    <option value='Mauritius'>Mauritius</option>\
                                    <option value='Mayotte'>Mayotte</option>\
                                    <option value='Mexico'>Mexico</option>\
                                    <option value='Micronesia, Federated States of'>Micronesia, Federated States of</option>\
                                    <option value='Moldova, Republic of'>Moldova, Republic of</option>\
                                    <option value='Monaco'>Monaco</option>\
                                    <option value='Mongolia'>Mongolia</option>\
                                    <option value='Montenegro'>Montenegro</option>\
                                    <option value='Montserrat'>Montserrat</option>\
                                    <option value='Morocco'>Morocco</option>\
                                    <option value='Mozambique'>Mozambique</option>\
                                    <option value='Myanmar'>Myanmar</option>\
                                    <option value='Namibia'>Namibia</option>\
                                    <option value='Nauru'>Nauru</option>\
                                    <option value='Nepal'>Nepal</option>\
                                    <option value='Netherlands'>Netherlands</option>\
                                    <option value='Netherlands Antilles'>Netherlands Antilles</option>\
                                    <option value='New Caledonia'>New Caledonia</option>\
                                    <option value='New Zealand'>New Zealand</option>\
                                    <option value='Nicaragua'>Nicaragua</option>\
                                    <option value='Niger'>Niger</option>\
                                    <option value='Nigeria'>Nigeria</option>\
                                    <option value='Niue'>Niue</option>\
                                    <option value='Norfolk Island'>Norfolk Island</option>\
                                    <option value='Northern Mariana Islands'>Northern Mariana Islands</option>\
                                    <option value='Norway'>Norway</option>\
                                    <option value='Oman'>Oman</option>\
                                    <option value='Pakistan'>Pakistan</option>\
                                    <option value='Palau'>Palau</option>\
                                    <option value='Palestinian Territory, Occupied'>Palestinian Territory, Occupied</option>\
                                    <option value='Panama'>Panama</option>\
                                    <option value='Papua New Guinea'>Papua New Guinea</option>\
                                    <option value='Paraguay'>Paraguay</option>\
                                    <option value='Peru'>Peru</option>\
                                    <option value='Philippines'>Philippines</option>\
                                    <option value='Pitcairn'>Pitcairn</option>\
                                    <option value='Poland'>Poland</option>\
                                    <option value='Portugal'>Portugal</option>\
                                    <option value='Puerto Rico'>Puerto Rico</option>\
                                    <option value='Qatar'>Qatar</option>\
                                    <option value='Reunion'>Reunion</option>\
                                    <option value='Romania'>Romania</option>\
                                    <option value='Russian Federation'>Russian Federation</option>\
                                    <option value='Rwanda'>Rwanda</option>\
                                    <option value='Saint Barthelemy'>Saint Barthelemy</option>\
                                    <option value='Saint Helena'>Saint Helena</option>\
                                    <option value='Saint Kitts and Nevis'>Saint Kitts and Nevis</option>\
                                    <option value='Saint Lucia'>Saint Lucia</option>\
                                    <option value='Saint Martin'>Saint Martin</option>\
                                    <option value='Saint Pierre and Miquelon'>Saint Pierre and Miquelon</option>\
                                    <option value='Saint Vincent and the Grenadines'>Saint Vincent and the Grenadines</option>\
                                    <option value='Samoa'>Samoa</option>\
                                    <option value='San Marino'>San Marino</option>\
                                    <option value='Sao Tome and Principe'>Sao Tome and Principe</option>\
                                    <option value='Saudi Arabia'>Saudi Arabia</option>\
                                    <option value='Senegal'>Senegal</option>\
                                    <option value='Serbia'>Serbia</option>\
                                    <option value='Serbia and Montenegro'>Serbia and Montenegro</option>\
                                    <option value='Seychelles'>Seychelles</option>\
                                    <option value='Sierra Leone'>Sierra Leone</option>\
                                    <option value='Singapore'>Singapore</option>\
                                    <option value='Sint Maarten'>Sint Maarten</option>\
                                    <option value='Slovakia'>Slovakia</option>\
                                    <option value='Slovenia'>Slovenia</option>\
                                    <option value='Solomon Islands'>Solomon Islands</option>\
                                    <option value='Somalia'>Somalia</option>\
                                    <option value='South Africa'>South Africa</option>\
                                    <option value='South Georgia and the South Sandwich Islands'>South Georgia and the South Sandwich Islands</option>\
                                    <option value='South Sudan'>South Sudan</option>\
                                    <option value='Spain'>Spain</option>\
                                    <option value='Sri Lanka'>Sri Lanka</option>\
                                    <option value='Sudan'>Sudan</option>\
                                    <option value='Suriname'>Suriname</option>\
                                    <option value='Svalbard and Jan Mayen'>Svalbard and Jan Mayen</option>\
                                    <option value='Swaziland'>Swaziland</option>\
                                    <option value='Sweden'>Sweden</option>\
                                    <option value='Switzerland'>Switzerland</option>\
                                    <option value='Syrian Arab Republic'>Syrian Arab Republic</option>\
                                    <option value='Taiwan, Province of China'>Taiwan, Province of China</option>\
                                    <option value='Tajikistan'>Tajikistan</option>\
                                    <option value='Tanzania, United Republic of'>Tanzania, United Republic of</option>\
                                    <option value='Thailand'>Thailand</option>\
                                    <option value='Timor-Leste'>Timor-Leste</option>\
                                    <option value='Togo'>Togo</option>\
                                    <option value='Tokelau'>Tokelau</option>\
                                    <option value='Tonga'>Tonga</option>\
                                    <option value='Trinidad and Tobago'>Trinidad and Tobago</option>\
                                    <option value='Tunisia'>Tunisia</option>\
                                    <option value='Turkey'>Turkey</option>\
                                    <option value='Turkmenistan'>Turkmenistan</option>\
                                    <option value='Turks and Caicos Islands'>Turks and Caicos Islands</option>\
                                    <option value='Tuvalu'>Tuvalu</option>\
                                    <option value='Uganda'>Uganda</option>\
                                    <option value='Ukraine'>Ukraine</option>\
                                    <option value='United Arab Emirates'>United Arab Emirates</option>\
                                    <option value='United Kingdom'>United Kingdom</option>\
                                    <option value='United States'>United States</option>\
                                    <option value='United States Minor Outlying Islands'>United States Minor Outlying Islands</option>\
                                    <option value='Uruguay'>Uruguay</option>\
                                    <option value='Uzbekistan'>Uzbekistan</option>\
                                    <option value='Vanuatu'>Vanuatu</option>\
                                    <option value='Venezuela'>Venezuela</option>\
                                    <option value='Viet Nam'>Viet Nam</option>\
                                    <option value='Virgin Islands, British'>Virgin Islands, British</option>\
                                    <option value='Virgin Islands, U.s.'>Virgin Islands, U.s.</option>\
                                    <option value='Wallis and Futuna'>Wallis and Futuna</option>\
                                    <option value='Western Sahara'>Western Sahara</option>\
                                    <option value='Yemen'>Yemen</option>\
                                    <option value='Zambia'>Zambia</option>\
                                    <option value='Zimbabwe'>Zimbabwe</option>\
                                    </select > <br /> <br />");


                                    fieldContainer.append('<label for="nestedSelect" class="control-label col-md-4  requiredField"> Categories </label>');
                                    var selectDropdown = $('<select id="nestedSelect" name="Categories"></select>');
                                    selectDropdown.append('<option value="choose" disabled selected>Choose categories</option>');
                                    selectDropdown.append('<option value="Juvenile1">Juvenile 1</option>');
                                    selectDropdown.append('<option value="Juvenile2">Juvenile 2</option>');
                                    selectDropdown.append('<option value="Junior1">Junior 1</option>');
                                    selectDropdown.append('<option value="Junior2">Junior 2</option>');
                                    selectDropdown.append('<option value="Youth">Youth</option>');
                                    selectDropdown.append('<option value="Adults">Adults</option>');
                                    fieldContainer.append(selectDropdown);
                                    fieldContainer.append('<div id="nestedFieldContainer"></div><br />');

                                    $('#nestedSelect').change(function () {
                                        var nestedSelectedOption = $(this).val();
                                        var nestedFieldContainer = $('#nestedFieldContainer');

                                        nestedFieldContainer.empty();

                                        nestedFieldContainer.append('<br/>');

                                        if (nestedSelectedOption === 'Juvenile1') {
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> Basic Only 6 Dances Juvenile I+II </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="basic6dancesjuvenile1" name="basic6dancesjuvenile1" value="Basic Only 6 Dances Juvenile I+II"><br/><br/><br/>');
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> Basic Juvenile I+II ST </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="basicjuvenilest1" name="basicjuvenilest1" value="Basic Juvenile I+II ST"><br/><br/><br/>');
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> Basic Juvenile I+II LA </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="basicjuvenilela1" name="basicjuvenilela1" value="Basic Juvenile I+II LA"><br/><br/><br/>');
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> International Open Juvenile 1 ST </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="intjuvenile1st" name="intjuvenile1st" value="International Open Juvenile 1 ST"><br/><br/><br/>');
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> International Open Juvenile 1 LA </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="intjuvenile1la" name="intjuvenile1la" value="International Open Juvenile 1 LA"><br/><br/><br/>');
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> International Open Juvenile 2 ST </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="intjuvenile2st1" name="intjuvenile2st1" value="International Open Juvenile 2 ST"><br/><br/><br/>');
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> International Open Juvenile 2 LA </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="intjuvenile2la1" name="intjuvenile2la1" value="International Open Juvenile 2 LA"><br/><br/>');
                                        }

                                        if (nestedSelectedOption === 'Juvenile2') {
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> Basic Only 6 Dances Juvenile I+II </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="basic6dancesjuvenile2" name="basic6dancesjuvenile2" value="Basic Only 6 Dances Juvenile I+II"><br/><br/><br/>');
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> Basic Juvenile I+II ST </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="basicjuvenilest2" name="basicjuvenilest2" value="Basic Juvenile I+II ST"><br/><br/><br/>');
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> Basic Juvenile I+II LA </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="basicjuvenilela2" name="basicjuvenilela2" value="Basic Juvenile I+II LA"><br/><br/><br/>');
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> International Open Juvenile 2 ST </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="intjuvenile2st2" name="intjuvenile2st2" value="International Open Juvenile 2 ST"><br/><br/><br/>');
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> International Open Juvenile 2 LA </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="intjuvenile2la2" name="intjuvenile2la2" value="International Open Juvenile 2 LA"><br/><br/>');
                                        }


                                        if (nestedSelectedOption === 'Junior1') {
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> Basic Only 6 Dances Junior 1 </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="basic6dancesjunior1" name="basic6dancesjunior1" value="Basic Only 6 Dances Junior 1"><br/><br/><br/>');
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> Basic Only 6 Dances Junior 2 </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="basic6dancesjunior21" name="basic6dancesjunior21" value="Basic Only 6 Dances Junior 2"><br/><br/><br/>');
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> Basic Junior 1 ST </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="basicjunior1st" name="basicjunior1st" value="Basic Junior 1 ST"><br/><br/><br/>');
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> Basic Junior 1 LA </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="basicjunior1la" name="basicjunior1la" value="Basic Junior 1 LA"><br/><br/><br/>');
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> Basic Junior 2 ST </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="basicjunior2st1" name="basicjunior2st1" value="Basic Junior 2 ST"><br/><br/><br/>');
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> Basic Junior 2 LA </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="basicjunior2la1" name="basicjunior2la1" value="Basic Junior 2 LA"><br/><br/><br/>');
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> International Open Junior 1 ST </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="intjunior1st" name="intjunior1st" value="International Open Junior 1 ST"><br/><br/><br/>');
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> International Open Junior 1 LA </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="intjunior1la" name="intjunior1la" value="International Open Junior 1 LA"><br/><br/><br/>');
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> International Open Junior 2 ST </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="intjunior2st1" name="intjunior2st1" value="International Open Junior 2 ST"><br/><br/><br/>');
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> International Open Junior 2 LA </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="intjunior2la1" name="intjunior2la1" value="International Open Junior 2 LA"><br/><br/>');
                                        }

                                        if (nestedSelectedOption === 'Junior2') {
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> Basic Only 6 Dances Junior 2 </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="basic6dancesjunior22" name="basic6dancesjunior22" value="Basic Only 6 Dances Junior 2"><br/><br/><br/>');
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> Basic Junior 2 ST </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="basicjunior2st1" name="basicjunior2st1" value="Basic Junior 2 ST"><br/><br/><br/>');
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> Basic Junior 2 LA </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="basicjunior2la1" name="basicjunior2la1" value="Basic Junior 2 LA"><br/><br/><br/>');
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> International Open Junior 2 ST </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="intjunior2st1" name="intjunior2st1" value="International Open Junior 2 ST"><br/><br/><br/>');
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> International Open Junior 2 LA </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="intjunior2la1" name="intjunior2la1" value="International Open Junior 2 LA"><br/><br/>');
                                        }

                                        if (nestedSelectedOption === 'Youth') {
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> Basic Youth+Adults ST </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="basicyouthst1" name="basicyouthst1" value="Basic Youth+Adults ST"><br/><br/><br/>');
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> Basic Youth+Adults LA </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="basicyouthla1" name="basicyouthla1" value="Basic Youth+Adults LA"><br/><br/><br/>');
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> International Open Youth ST </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="intyouthst" name="intyouthst" value="International Open Youth ST"><br/><br/><br/>');
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> International Open Youth LA </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="intyouthLA" name="intyouthLA" value="International Open Youth LA"><br/><br/><br/>');
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> WDSF World Open ST </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="worldopenst1" name="worldopenst1" value="WDSF World Open ST"><br/><br/><br/>');
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> WDSF World Open LA </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="worldopenla1" name="worldopenla1" value="WDSF World Open LA"><br/><br/>');
                                        }

                                        if (nestedSelectedOption === 'Adults') {
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> Basic Youth+Adults ST </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="basicyouthst2" name="basicyouthst2" value="Basic Youth+Adults ST"><br/><br/><br/>');
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> Basic Youth+Adults LA </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="basicyouthla2" name="basicyouthla2" value="Basic Youth+Adults LA"><br/><br/><br/>');
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> WDSF World Open ST </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="worldopenst2" name="worldopenst2" value="WDSF World Open ST"><br/><br/><br/>');
                                            nestedFieldContainer.append('<label for="id_categoriescheckbox" class="control-label col-md-4  requiredField"> WDSF World Open LA </label>');
                                            nestedFieldContainer.append('<input type="checkbox" id="worldopenla2" name="worldopenla2" value="WDSF World Open LA"><br/><br/>');
                                        }

                                    });


                                    fieldContainer.append('<label for="id_email" class="control-label col-md-4  requiredField"> E-mail address </label>');
                                    fieldContainer.append('<input type="email" id="id_email" name="Email" placeholder="name@example.com" data-sb-validations="required,email" />');
                                    fieldContainer.append('<div class="invalid-feedback" data-sb-feedback="email:required">An email is required.</div>');
                                    fieldContainer.append('<div class="invalid-feedback" data-sb-feedback="email:email">Email is not valid.</div>');


                                } else if (selectedOption === 'Camp') {

                                    fieldContainer.append('<label for="id_male_firstname" class="control-label col-md-4  requiredField"> Male First Name </label>');
                                    fieldContainer.append('<input type="text" id="male_firstname" name="MaleFirstName"><br /><br />');
                                    fieldContainer.append('<label for="id_male_lastname" class="control-label col-md-4  requiredField"> Male Last Name </label>');
                                    fieldContainer.append('<input type="text" id="male_lastname" name="MaleLastName"><br /><br />');

                                    fieldContainer.append('<label for="id_female_firstname" class="control-label col-md-4  requiredField"> Female First Name </label>');
                                    fieldContainer.append('<input type="text" id="female_firstname" name="FemaleFirstName"><br /><br />');
                                    fieldContainer.append('<label for="id_female_lastname" class="control-label col-md-4  requiredField"> Female Last Name </label>');
                                    fieldContainer.append('<input type="text" id="female_lastname" name="FemaleLastName"><br /><br />');

                                    fieldContainer.append('<label for="id_country" class="control-label col-md-4  requiredField"> Country </label>');
                                    fieldContainer.append("<select id='country' name='country'>\
                                    <option value='choose' disabled selected>Choose country</option>\
                                    <option value='Afghanistan'>Afghanistan</option>\
                                    <option value='Aland Islands'>Aland Islands</option>\
                                    <option value='Albania'>Albania</option>\
                                    <option value='Algeria'>Algeria</option>\
                                    <option value='American Samoa'>American Samoa</option>\
                                    <option value='Andorra'>Andorra</option>\
                                    <option value='Angola'>Angola</option>\
                                    <option value='Anguilla'>Anguilla</option>\
                                    <option value='Antarctica'>Antarctica</option>\
                                    <option value='Antigua and Barbuda'>Antigua and Barbuda</option>\
                                    <option value='Argentina'>Argentina</option>\
                                    <option value='Armenia'>Armenia</option>\
                                    <option value='Aruba'>Aruba</option>\
                                    <option value='Australia'>Australia</option>\
                                    <option value='Austria'>Austria</option>\
                                    <option value='Azerbaijan'>Azerbaijan</option>\
                                    <option value='Bahamas'>Bahamas</option>\
                                    <option value='Bahrain'>Bahrain</option>\
                                    <option value='Bangladesh'>Bangladesh</option>\
                                    <option value='Barbados'>Barbados</option>\
                                    <option value='Belarus'>Belarus</option>\
                                    <option value='Belgium'>Belgium</option>\
                                    <option value='Belize'>Belize</option>\
                                    <option value='Benin'>Benin</option>\
                                    <option value='Bermuda'>Bermuda</option>\
                                    <option value='Bhutan'>Bhutan</option>\
                                    <option value='Bolivia'>Bolivia</option>\
                                    <option value='Bonaire, Sint Eustatius and Saba'>Bonaire, Sint Eustatius and Saba</option>\
                                    <option value='Bosnia and Herzegovina'>Bosnia and Herzegovina</option>\
                                    <option value='Botswana'>Botswana</option>\
                                    <option value='Bouvet Island'>Bouvet Island</option>\
                                    <option value='Brazil'>Brazil</option>\
                                    <option value='British Indian Ocean Territory'>British Indian Ocean Territory</option>\
                                    <option value='Brunei Darussalam'>Brunei Darussalam</option>\
                                    <option value='Bulgaria'>Bulgaria</option>\
                                    <option value='Burkina Faso'>Burkina Faso</option>\
                                    <option value='Burundi'>Burundi</option>\
                                    <option value='Cambodia'>Cambodia</option>\
                                    <option value='Cameroon'>Cameroon</option>\
                                    <option value='Canada'>Canada</option>\
                                    <option value='Cape Verde'>Cape Verde</option>\
                                    <option value='Cayman Islands'>Cayman Islands</option>\
                                    <option value='Central African Republic'>Central African Republic</option>\
                                    <option value='Chad'>Chad</option>\
                                    <option value='Chile'>Chile</option>\
                                    <option value='China'>China</option>\
                                    <option value='Christmas Island'>Christmas Island</option>\
                                    <option value='Cocos (Keeling) Islands'>Cocos (Keeling) Islands</option>\
                                    <option value='Colombia'>Colombia</option>\
                                    <option value='Comoros'>Comoros</option>\
                                    <option value='Congo'>Congo</option>\
                                    <option value='Congo, Democratic Republic of the Congo'>Congo, Democratic Republic of the Congo</option>\
                                    <option value='Cook Islands'>Cook Islands</option>\
                                    <option value='Costa Rica'>Costa Rica</option>\
                                    <option value='Cote D'Ivoire'>Cote D'Ivoire</option >\
                                    <option value='Croatia'>Croatia</option>\
                                    <option value='Cuba'>Cuba</option>\
                                    <option value='Curacao'>Curacao</option>\
                                    <option value='Cyprus'>Cyprus</option>\
                                    <option value='Czech Republic'>Czech Republic</option>\
                                    <option value='Denmark'>Denmark</option>\
                                    <option value='Djibouti'>Djibouti</option>\
                                    <option value='Dominica'>Dominica</option>\
                                    <option value='Dominican Republic'>Dominican Republic</option>\
                                    <option value='Ecuador'>Ecuador</option>\
                                    <option value='Egypt'>Egypt</option>\
                                    <option value='El Salvador'>El Salvador</option>\
                                    <option value='Equatorial Guinea'>Equatorial Guinea</option>\
                                    <option value='Eritrea'>Eritrea</option>\
                                    <option value='Estonia'>Estonia</option>\
                                    <option value='Ethiopia'>Ethiopia</option>\
                                    <option value='Falkland Islands (Malvinas)'>Falkland Islands (Malvinas)</option>\
                                    <option value='Faroe Islands'>Faroe Islands</option>\
                                    <option value='Fiji'>Fiji</option>\
                                    <option value='Finland'>Finland</option>\
                                    <option value='France'>France</option>\
                                    <option value='French Guiana'>French Guiana</option>\
                                    <option value='French Polynesia'>French Polynesia</option>\
                                    <option value='French Southern Territories'>French Southern Territories</option>\
                                    <option value='Gabon'>Gabon</option>\
                                    <option value='Gambia'>Gambia</option>\
                                    <option value='Georgia'>Georgia</option>\
                                    <option value='Germany'>Germany</option>\
                                    <option value='Ghana'>Ghana</option>\
                                    <option value='Gibraltar'>Gibraltar</option>\
                                    <option value='Greece'>Greece</option>\
                                    <option value='Greenland'>Greenland</option>\
                                    <option value='Grenada'>Grenada</option>\
                                    <option value='Guadeloupe'>Guadeloupe</option>\
                                    <option value='Guam'>Guam</option>\
                                    <option value='Guatemala'>Guatemala</option>\
                                    <option value='Guernsey'>Guernsey</option>\
                                    <option value='Guinea'>Guinea</option>\
                                    <option value='Guinea-Bissau'>Guinea-Bissau</option>\
                                    <option value='Guyana'>Guyana</option>\
                                    <option value='Haiti'>Haiti</option>\
                                    <option value='Heard Island and Mcdonald Islands'>Heard Island and Mcdonald Islands</option>\
                                    <option value='Holy See (Vatican City State)'>Holy See (Vatican City State)</option>\
                                    <option value='Honduras'>Honduras</option>\
                                    <option value='Hong Kong'>Hong Kong</option>\
                                    <option value='Hungary'>Hungary</option>\
                                    <option value='Iceland'>Iceland</option>\
                                    <option value='India'>India</option>\
                                    <option value='Indonesia'>Indonesia</option>\
                                    <option value='Iran, Islamic Republic of'>Iran, Islamic Republic of</option>\
                                    <option value='Iraq'>Iraq</option>\
                                    <option value='Ireland'>Ireland</option>\
                                    <option value='Isle of Man'>Isle of Man</option>\
                                    <option value='Israel'>Israel</option>\
                                    <option value='Italy'>Italy</option>\
                                    <option value='Jamaica'>Jamaica</option>\
                                    <option value='Japan'>Japan</option>\
                                    <option value='Jersey'>Jersey</option>\
                                    <option value='Jordan'>Jordan</option>\
                                    <option value='Kazakhstan'>Kazakhstan</option>\
                                    <option value='Kenya'>Kenya</option>\
                                    <option value='Kiribati'>Kiribati</option>\
                                    <option value='Kosovo'>Kosovo</option>\
                                    <option value='Kuwait'>Kuwait</option>\
                                    <option value='Kyrgyzstan'>Kyrgyzstan</option>\
                                    <option value='Lao People's Democratic Republic'>Lao People's Democratic Republic</option >\
                                    <option value='Latvia'>Latvia</option>\
                                    <option value='Lebanon'>Lebanon</option>\
                                    <option value='Lesotho'>Lesotho</option>\
                                    <option value='Liberia'>Liberia</option>\
                                    <option value='Libyan Arab Jamahiriya'>Libyan Arab Jamahiriya</option>\
                                    <option value='Liechtenstein'>Liechtenstein</option>\
                                    <option value='Lithuania'>Lithuania</option>\
                                    <option value='Luxembourg'>Luxembourg</option>\
                                    <option value='Macao'>Macao</option>\
                                    <option value='Macedonia, the Former Yugoslav Republic of'>Macedonia, the Former Yugoslav Republic of</option>\
                                    <option value='Madagascar'>Madagascar</option>\
                                    <option value='Malawi'>Malawi</option>\
                                    <option value='Malaysia'>Malaysia</option>\
                                    <option value='Maldives'>Maldives</option>\
                                    <option value='Mali'>Mali</option>\
                                    <option value='Malta'>Malta</option>\
                                    <option value='Marshall Islands'>Marshall Islands</option>\
                                    <option value='Martinique'>Martinique</option>\
                                    <option value='Mauritania'>Mauritania</option>\
                                    <option value='Mauritius'>Mauritius</option>\
                                    <option value='Mayotte'>Mayotte</option>\
                                    <option value='Mexico'>Mexico</option>\
                                    <option value='Micronesia, Federated States of'>Micronesia, Federated States of</option>\
                                    <option value='Moldova, Republic of'>Moldova, Republic of</option>\
                                    <option value='Monaco'>Monaco</option>\
                                    <option value='Mongolia'>Mongolia</option>\
                                    <option value='Montenegro'>Montenegro</option>\
                                    <option value='Montserrat'>Montserrat</option>\
                                    <option value='Morocco'>Morocco</option>\
                                    <option value='Mozambique'>Mozambique</option>\
                                    <option value='Myanmar'>Myanmar</option>\
                                    <option value='Namibia'>Namibia</option>\
                                    <option value='Nauru'>Nauru</option>\
                                    <option value='Nepal'>Nepal</option>\
                                    <option value='Netherlands'>Netherlands</option>\
                                    <option value='Netherlands Antilles'>Netherlands Antilles</option>\
                                    <option value='New Caledonia'>New Caledonia</option>\
                                    <option value='New Zealand'>New Zealand</option>\
                                    <option value='Nicaragua'>Nicaragua</option>\
                                    <option value='Niger'>Niger</option>\
                                    <option value='Nigeria'>Nigeria</option>\
                                    <option value='Niue'>Niue</option>\
                                    <option value='Norfolk Island'>Norfolk Island</option>\
                                    <option value='Northern Mariana Islands'>Northern Mariana Islands</option>\
                                    <option value='Norway'>Norway</option>\
                                    <option value='Oman'>Oman</option>\
                                    <option value='Pakistan'>Pakistan</option>\
                                    <option value='Palau'>Palau</option>\
                                    <option value='Palestinian Territory, Occupied'>Palestinian Territory, Occupied</option>\
                                    <option value='Panama'>Panama</option>\
                                    <option value='Papua New Guinea'>Papua New Guinea</option>\
                                    <option value='Paraguay'>Paraguay</option>\
                                    <option value='Peru'>Peru</option>\
                                    <option value='Philippines'>Philippines</option>\
                                    <option value='Pitcairn'>Pitcairn</option>\
                                    <option value='Poland'>Poland</option>\
                                    <option value='Portugal'>Portugal</option>\
                                    <option value='Puerto Rico'>Puerto Rico</option>\
                                    <option value='Qatar'>Qatar</option>\
                                    <option value='Reunion'>Reunion</option>\
                                    <option value='Romania'>Romania</option>\
                                    <option value='Russian Federation'>Russian Federation</option>\
                                    <option value='Rwanda'>Rwanda</option>\
                                    <option value='Saint Barthelemy'>Saint Barthelemy</option>\
                                    <option value='Saint Helena'>Saint Helena</option>\
                                    <option value='Saint Kitts and Nevis'>Saint Kitts and Nevis</option>\
                                    <option value='Saint Lucia'>Saint Lucia</option>\
                                    <option value='Saint Martin'>Saint Martin</option>\
                                    <option value='Saint Pierre and Miquelon'>Saint Pierre and Miquelon</option>\
                                    <option value='Saint Vincent and the Grenadines'>Saint Vincent and the Grenadines</option>\
                                    <option value='Samoa'>Samoa</option>\
                                    <option value='San Marino'>San Marino</option>\
                                    <option value='Sao Tome and Principe'>Sao Tome and Principe</option>\
                                    <option value='Saudi Arabia'>Saudi Arabia</option>\
                                    <option value='Senegal'>Senegal</option>\
                                    <option value='Serbia'>Serbia</option>\
                                    <option value='Serbia and Montenegro'>Serbia and Montenegro</option>\
                                    <option value='Seychelles'>Seychelles</option>\
                                    <option value='Sierra Leone'>Sierra Leone</option>\
                                    <option value='Singapore'>Singapore</option>\
                                    <option value='Sint Maarten'>Sint Maarten</option>\
                                    <option value='Slovakia'>Slovakia</option>\
                                    <option value='Slovenia'>Slovenia</option>\
                                    <option value='Solomon Islands'>Solomon Islands</option>\
                                    <option value='Somalia'>Somalia</option>\
                                    <option value='South Africa'>South Africa</option>\
                                    <option value='South Georgia and the South Sandwich Islands'>South Georgia and the South Sandwich Islands</option>\
                                    <option value='South Sudan'>South Sudan</option>\
                                    <option value='Spain'>Spain</option>\
                                    <option value='Sri Lanka'>Sri Lanka</option>\
                                    <option value='Sudan'>Sudan</option>\
                                    <option value='Suriname'>Suriname</option>\
                                    <option value='Svalbard and Jan Mayen'>Svalbard and Jan Mayen</option>\
                                    <option value='Swaziland'>Swaziland</option>\
                                    <option value='Sweden'>Sweden</option>\
                                    <option value='Switzerland'>Switzerland</option>\
                                    <option value='Syrian Arab Republic'>Syrian Arab Republic</option>\
                                    <option value='Taiwan, Province of China'>Taiwan, Province of China</option>\
                                    <option value='Tajikistan'>Tajikistan</option>\
                                    <option value='Tanzania, United Republic of'>Tanzania, United Republic of</option>\
                                    <option value='Thailand'>Thailand</option>\
                                    <option value='Timor-Leste'>Timor-Leste</option>\
                                    <option value='Togo'>Togo</option>\
                                    <option value='Tokelau'>Tokelau</option>\
                                    <option value='Tonga'>Tonga</option>\
                                    <option value='Trinidad and Tobago'>Trinidad and Tobago</option>\
                                    <option value='Tunisia'>Tunisia</option>\
                                    <option value='Turkey'>Turkey</option>\
                                    <option value='Turkmenistan'>Turkmenistan</option>\
                                    <option value='Turks and Caicos Islands'>Turks and Caicos Islands</option>\
                                    <option value='Tuvalu'>Tuvalu</option>\
                                    <option value='Uganda'>Uganda</option>\
                                    <option value='Ukraine'>Ukraine</option>\
                                    <option value='United Arab Emirates'>United Arab Emirates</option>\
                                    <option value='United Kingdom'>United Kingdom</option>\
                                    <option value='United States'>United States</option>\
                                    <option value='United States Minor Outlying Islands'>United States Minor Outlying Islands</option>\
                                    <option value='Uruguay'>Uruguay</option>\
                                    <option value='Uzbekistan'>Uzbekistan</option>\
                                    <option value='Vanuatu'>Vanuatu</option>\
                                    <option value='Venezuela'>Venezuela</option>\
                                    <option value='Viet Nam'>Viet Nam</option>\
                                    <option value='Virgin Islands, British'>Virgin Islands, British</option>\
                                    <option value='Virgin Islands, U.s.'>Virgin Islands, U.s.</option>\
                                    <option value='Wallis and Futuna'>Wallis and Futuna</option>\
                                    <option value='Western Sahara'>Western Sahara</option>\
                                    <option value='Yemen'>Yemen</option>\
                                    <option value='Zambia'>Zambia</option>\
                                    <option value='Zimbabwe'>Zimbabwe</option>\
                                    </select > <br /> <br />");

                                    fieldContainer.append('<label for="id_dancetype" class="control-label col-md-4  requiredField"> Section </label>');
                                    fieldContainer.append("<select id='dancesection' name='dancesection'>\
                                    <option value='choose' disabled selected>Choose section</option>\
                                    <option value='Standard'>Standard</option>\
                                    <option value='Latino'>Latino</option>\
                                    <option value='StandardAndLatino'>Standard and Latino</option>\
                                    </select > <br /> <br />");
                                    

                                    fieldContainer.append('<label for="id_coachcheckbox" class="control-label col-md-4  requiredField"> Choose from the available trainers : </label><br/><br/><br/>');
                                    fieldContainer.append('<label for="dima" class="control-label col-md-4  requiredField"> Dmitry Zharkov </label>');
                                    fieldContainer.append('<input type="checkbox" id="dimaFieldsCheckbox" name="dima" value="Dmitry Zharkov"><br/><br/>');
                                    fieldContainer.append('<div id = "dimaFieldsContainer1"></div >');

                                    fieldContainer.append('<label for="fabio" class="control-label col-md-4  requiredField"> Fabio Selmi </label>');
                                    fieldContainer.append('<input type="checkbox" id="fabioFieldsCheckbox" name="fabio" value="Fabio Selmi"><br/><br/>');
                                    fieldContainer.append('<div id = "fabioFieldsContainer1"></div >');

                                    fieldContainer.append('<label for="franco" class="control-label col-md-4  requiredField"> Franco Formica </label>');
                                    fieldContainer.append('<input type="checkbox" id="francoFieldsCheckbox" name="franco" value="Franco Formica"><br/><br/>');
                                    fieldContainer.append('<div id = "francoFieldsContainer1"></div >');

                                    fieldContainer.append('<label for="karina" class="control-label col-md-4  requiredField"> Karina Smirnoff </label>');
                                    fieldContainer.append('<input type="checkbox" id="karinaFieldsCheckbox" name="karina" value="Karina Smirnoff"><br/><br/>');
                                    fieldContainer.append('<div id = "karinaFieldsContainer1"></div >');

                                    fieldContainer.append('<label for="id_email" class="control-label col-md-4  requiredField"> E-mail address </label>');
                                    fieldContainer.append('<input type="email" id="id_email" name="Email" placeholder="name@example.com" data-sb-validations="required,email" />');
                                    fieldContainer.append('<div class="invalid-feedback" data-sb-feedback="email:required">An email is required.</div>');
                                    fieldContainer.append('<div class="invalid-feedback" data-sb-feedback="email:email">Email is not valid.</div>');

                                    $('#dimaFieldsCheckbox').change(function () {
                                        var dimaFieldsContainer1 = $('#dimaFieldsContainer1');

                                        dimaFieldsContainer1.empty();


                                        if ($('#dimaFieldsCheckbox').is(':checked')) {
                                            dimaFieldsContainer1.append('<label for="id_dima_hours" class="control-label col-md-4  requiredField"> Number of hours : </label>');
                                            dimaFieldsContainer1.append('<input id="id_dima_hours" type="number" min="1" max="5" value="1" onkeydown="return false;"></input><br /><br />');
                                        }
                                    });

                                    $('#fabioFieldsCheckbox').change(function () {
                                        var fabioFieldsContainer1 = $('#fabioFieldsContainer1');

                                        fabioFieldsContainer1.empty();


                                        if ($('#fabioFieldsCheckbox').is(':checked')) {
                                            fabioFieldsContainer1.append('<label for="id_fabio_hours" class="control-label col-md-4  requiredField"> Number of hours : </label>');
                                            fabioFieldsContainer1.append('<input id="id_fabio_hours" type="number" min="1" max="5" value="1" onkeydown="return false;" ></input><br /><br />');
                                        }
                                    });

                                    $('#francoFieldsCheckbox').change(function () {
                                        var francoFieldsContainer1 = $('#francoFieldsContainer1');

                                        francoFieldsContainer1.empty();


                                        if ($('#francoFieldsCheckbox').is(':checked')) {
                                            francoFieldsContainer1.append('<label for="id_franco_hours" class="control-label col-md-4  requiredField"> Number of hours : </label>');
                                            francoFieldsContainer1.append('<input id="id_franco_hours" type="number" min="1" max="5" value="1" onkeydown="return false;"></input><br /><br />');
                                        }
                                    });

                                    $('#karinaFieldsCheckbox').change(function () {
                                        var karinaFieldsContainer1 = $('#karinaFieldsContainer1');

                                        karinaFieldsContainer1.empty();


                                        if ($('#karinaFieldsCheckbox').is(':checked')) {
                                            karinaFieldsContainer1.append('<label for="id_karina_hours" class="control-label col-md-4  requiredField"> Number of hours : </label>');
                                            karinaFieldsContainer1.append('<input id="id_karina_hours" type="number" min="1" max="5" value="1" onkeydown="return false;"></input><br /><br />');
                                        }
                                    });
                                }
                            });
                        });

                        function submitForm() {
                            var radioButtons = document.getElementsByName('option');
                            var selectedValue = null;

                            for (var i = 0; i < radioButtons.length; i++) {
                                if (radioButtons[i].checked) {
                                    selectedValue = radioButtons[i].value;
                                    break;
                                }
                            }
                            if (selectedValue === "Competition") {
                                console.log('Competition option selected');
                                var male_firstname = $('#male_firstname').val();
                                var male_lastname = $('#male_lastname').val();
                                var male_id = $('#male_id').val();

                                var female_firstname = $('#female_firstname').val();
                                var female_lastname = $('#female_lastname').val();
                                var female_id = $('#female_id').val();

                                var country = $('#country').val();

                                var category = "";

                                if ($('#basic6dancesjuvenile1').is(':checked'))
                                    category = category + "Basic Only 6 Dances Juvenile I+II ";
                                if ($('#basicjuvenilest1').is(':checked'))
                                    category = category + "Basic Juvenile I+II ST, ";
                                if ($('#basicjuvenilela1').is(':checked'))
                                    category = category + "Basic Juvenile I+II LA, ";
                                if ($('#intjuvenile1st').is(':checked'))
                                    category = category + "International Open Juvenile 1 ST" + ", ";
                                if ($('#intjuvenile1la').is(':checked'))
                                    category = category + "International Open Juvenile 1 LA" + ", ";
                                if ($('#intjuvenile2st1').is(':checked'))
                                    category = category + "International Open Juvenile 2 ST" + ", ";
                                if ($('#intjuvenile2la1').is(':checked'))
                                    category = category + "International Open Juvenile 2 LA" + ", ";


                                if ($('#basic6dancesjuvenile2').is(':checked'))
                                    category = category + "Basic Only 6 Dances Juvenile I+II" + ", ";
                                if ($('#basicjuvenilest2').is(':checked'))
                                    category = category + "Basic Juvenile I+II ST" + ", ";
                                if ($('#basicjuvenilela2').is(':checked'))
                                    category = category + "Basic Juvenile I+II LA" + ", ";
                                if ($('#intjuvenile2st2').is(':checked'))
                                    category = category + "International Open Juvenile 2 ST" + ", ";
                                if ($('#intjuvenile2la2').is(':checked'))
                                    category = category + "International Open Juvenile 2 LA" + ", ";


                                if ($('#basic6dancesjunior2').is(':checked'))
                                    category = category + "Basic Only 6 Dances Junior 1" + ", ";
                                if ($('#basic6dancesjunior21').is(':checked'))
                                    category = category + "Basic Only 6 Dances Junior 2" + ", ";
                                if ($('#basicjunior1st').is(':checked'))
                                    category = category + "Basic Junior 1 ST" + ", ";
                                if ($('#basicjunior1la').is(':checked'))
                                    category = category + "Basic Junior 1 LA" + ", ";
                                if ($('#basicjunior2st1').is(':checked'))
                                    category = category + "Basic Junior 2 ST" + ", ";
                                if ($('#basicjunior2la1').is(':checked'))
                                    category = category + "Basic Junior 2 LA" + ", ";
                                if ($('#intjunior1st').is(':checked'))
                                    category = category + "International Open Junior 1 ST" + ", ";
                                if ($('#intjunior1la').is(':checked'))
                                    category = category + "International Open Junior 1 LA" + ", ";
                                if ($('#intjunior2st1').is(':checked'))
                                    category = category + "International Open Junior 2 ST" + ", ";
                                if ($('#intjunior2la1').is(':checked'))
                                    category = category + "International Open Junior 2 LA" + ", ";


                                if ($('#basic6dancesjunior22').is(':checked'))
                                    category = category + "Basic Only 6 Dances Junior 2" + ", ";
                                if ($('#basicjunior2st1').is(':checked'))
                                    category = category + "Basic Junior 2 ST" + ", ";
                                if ($('#basicjunior2la1').is(':checked'))
                                    category = category + "Basic Junior 2 LA" + ", ";
                                if ($('#intjunior2st1').is(':checked'))
                                    category = category + "International Open Junior 2 ST" + ", ";
                                if ($('#intjunior2la1').is(':checked'))
                                    category = category + "International Open Junior 2 LA" + ", ";


                                if ($('#basicyouthst1').is(':checked'))
                                    category = category + "Basic Youth + Adults ST" + ", ";
                                if ($('#basicyouthla1').is(':checked'))
                                    category = category + "Basic Youth + Adults LA" + ", ";
                                if ($('#intyouthst').is(':checked'))
                                    category = category + "International Open Youth ST" + ", ";
                                if ($('#intyouthLA').is(':checked'))
                                    category = category + "International Open Youth LA" + ", ";
                                if ($('#worldopenst1').is(':checked'))
                                    category = category + "WDSF World Open ST" + ", ";
                                if ($('#worldopenla1').is(':checked'))
                                    category = category + "WDSF World Open LA" + ", ";


                                if ($('#basicyouthst2').is(':checked'))
                                    category = category + "Basic Youth + Adults ST" + ", ";
                                if ($('#basicyouthla2').is(':checked'))
                                    category = category + "Basic Youth + Adults LA" + ", ";
                                if ($('#worldopenst2').is(':checked'))
                                    category = category + "WDSF World Open ST" + ", ";
                                if ($('#worldopenla2').is(':checked'))
                                    category = category + "WDSF World Open LA" + ", ";


                                var email = $('#id_email').val();

                                var data = {
                                    male_firstname: male_firstname,
                                    male_lastname: male_lastname,
                                    male_id: male_id,
                                    female_firstname: female_firstname,
                                    female_lastname: female_lastname,
                                    female_id: female_id,
                                    country: country,
                                    category: category,
                                    email: email
                                }


                                $.ajax({
                                    type: "POST",
                                    url: "ProcessFormsData.aspx/CompetitionData",
                                    data: JSON.stringify(data),
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (response) {
                                        console.log(JSON.stringify(data) + ' successfully sent to server.');
                                    },
                                    error: function (xhr, status, error) {
                                        console.log('Error sending ' + data.male_firstname + ' to server: ' + error);
                                    }
                                });
                            }
                            else { 
                                var male_firstname = $('#male_firstname').val();
                                var male_lastname = $('#male_lastname').val();

                                var female_firstname = $('#female_firstname').val();
                                var female_lastname = $('#female_lastname').val();

                                var country = $('#country').val();
                                var section = $('#dancesection').val();
                                var email = $('#id_email').val();

                                var hours = "";

                                if ($('#dimaFieldsCheckbox').is(':checked'))
                                    hours = hours + "Dima: " + $('#id_dima_hours').val() + ", ";
                                if ($('#fabioFieldsCheckbox').is(':checked'))
                                    hours = hours + "Fabio: " + $('#id_fabio_hours').val() + ", ";
                                if ($('#francoFieldsCheckbox').is(':checked'))
                                    hours = hours + "Franco: " + $('#id_franco_hours').val() + ", ";
                                if ($('#karinaFieldsCheckbox').is(':checked'))
                                    hours = hours + "Karina: " + $('#id_karina_hours').val() + ", ";


                                var data = {
                                    male_firstname: male_firstname,
                                    male_lastname: male_lastname,
                                    female_firstname: female_firstname,
                                    female_lastname: female_lastname,
                                    country: country,
                                    section: section,
                                    hours: hours,
                                    email: email
                                }


                                $.ajax({
                                    type: "POST",
                                    url: "ProcessFormsData.aspx/CampData",
                                    data: JSON.stringify(data),
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (response) {
                                        
                                        console.log(JSON.stringify(data) + ' successfully sent to server.');
                                    },
                                    error: function (xhr, status, error) {
                                        
                                        console.log('Error sending ' + data.male_firstname + ' to server: ' + error);
                                    }
                                });
                            }
                        }
                    </script>

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
