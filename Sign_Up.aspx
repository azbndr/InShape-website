<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sign_Up.aspx.cs" Inherits="Sign_Up"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>  
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/Style.css" rel="stylesheet" />
    <link href="BootstrapFormHelpers-d4201db/dist/css/bootstrap-formhelpers.min.css" rel="stylesheet" />
    <link href="mdl/material.min.css" rel="stylesheet" />   
</head>
<body id="sUP" class="img-responsive">               
    <form id="fs1" runat="server">
            <h3 style="color:#00ffff;font-weight:900;text-align:center; padding-top:12px;">Sign Up</h3>
            <hr style="width:80%;margin:8px 16px 8px 32px;" />
            <table style="width:100%;">             
                <tr>
                    <th>First Name</th>
                    <td >                       
                        <asp:TextBox ID="fname" runat="server" placeholder="Enter your firstname."></asp:TextBox>
                    </td>                   
                    <td>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fname" ErrorMessage="Please enter your first name." ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>                   
                </tr>
                <tr>                   
                    <th>Last Name</th>
                    <td >
                        <asp:TextBox ID="lname" runat="server" placeholder="Enter your lastname."></asp:TextBox>
                    </td>                  
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lname" ErrorMessage="Please enter your last name." ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>                  
                </tr>
                <tr>
                    <th>Date Of Birth</th>
                    <td >
                        <asp:DropDownList ID="dbirth1" runat="server">
                            <asp:ListItem Selected="True">Day</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="dbirth2" runat="server">
                            <asp:ListItem Selected="True">Month</asp:ListItem>
                            <asp:ListItem>may</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="dbirth3" runat="server">
                            <asp:ListItem Selected="True">year</asp:ListItem>
                            <asp:ListItem>1990</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <th>Gender</th>
                    <td >
                        <input type="radio" name="gender" value="Male" checked="checked" /><label style="color:white;padding-left:4px;padding-right:8px;"for="Male"> Male</label>           
                        <input type="radio" name="gender" value="Female" /><label style="color:white;padding-left:4px;" for="Female"> Female</label>            
                    </td>                                             
                    <td>
                        &nbsp;</td>                                             
                </tr>
                <tr>
                    <th>Country</th>
                    <td >
                        <asp:DropDownList ID="country" runat="server">
                            <asp:ListItem Selected="True">--Select your country</asp:ListItem>
                            <asp:ListItem>US</asp:ListItem>
                            <asp:ListItem>Egypt</asp:ListItem>
                            <asp:ListItem>UK</asp:ListItem>
                        </asp:DropDownList>
                                                <! -- country selector with flags and search -- >
                        <%--<div id="country" style="width:100%; top: 0px; left: 0px;" class="bfh-selectbox bfh-countries" data-country="US" data-flags="true" >
                          <input type="hidden" value=""/>
                          <a class="bfh-selectbox-toggle" role="button" data-toggle="bfh-selectbox" href="#">
                            <span class="bfh-selectbox-option input-medium" data-option=""></span>
                            <b class="caret"></b>
                          </a>
                          <div class="bfh-selectbox-options">
                            <input type="text" class="bfh-selectbox-filter"/>
                            <div role="listbox">
                            <ul role="option">
                            </ul>
                            </div>
                          </div>
                        </div>--%>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="country" ErrorMessage="Please select your country." ForeColor="Red" InitialValue="--select your country">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <th>E-mail</th>
                    <td >
                        <asp:TextBox ID="email" runat="server" TextMode="Email" placeholder="info@example.com"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="email" ErrorMessage="Please enter your e-mail." ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <th>Phone</th>
                    <td >
                        <asp:TextBox ID="phone" runat="server" TextMode="Phone" placeholder="ex:+201111111111"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="phone" ErrorMessage="Please enter your phone." ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <th>Password</th>
                    <td >
                        <asp:TextBox ID="pass1" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="pass1" ErrorMessage="Please enter a password." ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <th>Confirm Password</th>
                    <td >
                        <asp:TextBox ID="pass2" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pass1" ControlToValidate="pass2" ErrorMessage="Password does not match." ForeColor="Red">*</asp:CompareValidator>
                    </td>
                </tr>               
            </table>   
        <div style="height:30px">
         <asp:CheckBox ID="checkbox1" runat="server" />
            <label style="color:white;padding:8px;"> &nbsp;I agree with the terms. </label>  
        </div><hr style="width:80%; margin:8px 16px 16px 32px;";"/>
        <div>           
            <asp:Button ID="reset" CssClass="btn btn-primary btn-danger pull-right" runat="server" Text="Reset" />
            <asp:Button ID="submit" CssClass="btn btn-primary btn-success pull-right" runat="server" Text="Submit" OnClick="submit_Click" />
        </div>
        
    </form>
    <script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="BootstrapFormHelpers-d4201db/dist/js/bootstrap-formhelpers.min.js"></script>
    <script src="mdl/material.min.js"></script>
</body>
</html>
