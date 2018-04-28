<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sign_in.aspx.cs" Inherits="Sign_in" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
     <meta name="viewport" content="width=device-width, initial-scale=1.0"/>  
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/Style.css" rel="stylesheet" />
    <link href="BootstrapFormHelpers-d4201db/dist/css/bootstrap-formhelpers.min.css" rel="stylesheet" />
    <link href="mdl/material.min.css" rel="stylesheet" />   
</head>
<body id="sIN">
    <form id="fs2" runat="server">
        <h3 style="color:#00ffff;font-weight:900;padding-left:16px;padding-top:12px;">Sign In</h3>
        <hr style="width:80%;margin:4px 16px 8px 32px;" />
        <table style="width:100%;">
            <tr>
                <th>E-mail</th>
                <td>
                    <asp:TextBox ID="loginId" runat="server" TextMode="Email" placeholder="E-mail" ></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="loginId" ErrorMessage="Please enter your e-mail." ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <th>Password</th>
                <td>
                    <asp:TextBox ID="loginPass" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="loginPass" ErrorMessage="Please enter your password." ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <hr style="width:80%;margin:8px 16px 8px 32px;" />
        <div style="height:30px">
            <asp:Button ID="login" runat="server" CssClass="btn btn-info" Text="Login" OnClick="login_Click" />
        </div>
    </form>
    <script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="BootstrapFormHelpers-d4201db/dist/js/bootstrap-formhelpers.min.js"></script>
    <script src="mdl/material.min.js"></script>
</body>
</html>
