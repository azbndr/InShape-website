<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
   <div>
       <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
       <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
       <div>
     <div id="gv">
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black">
             <Columns>
                 <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                 <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                 <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                 <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
                 <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                 <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                 <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
             </Columns>
             <FooterStyle BackColor="#CCCCCC" />
             <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
             <RowStyle BackColor="White" />
             <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F1F1F1" />
             <SortedAscendingHeaderStyle BackColor="#808080" />
             <SortedDescendingCellStyle BackColor="#CAC9C9" />
             <SortedDescendingHeaderStyle BackColor="#383838" />
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT * FROM [udata]"></asp:SqlDataSource>
       </div>
         <table style="width: 100%;">
             <tr>
                 <th>E-mail</th>
                 <td>
                     <asp:TextBox ID="t" runat="server"></asp:TextBox>
                 </td>
                 <td></td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td>
                     <asp:TextBox ID="t1" runat="server" TextMode="Password"></asp:TextBox>
                 </td>
                 <td>&nbsp;</td>
             </tr>
         </table>
       <div style="margin-left:25%;" class="btn-group-lg">
         <asp:Button ID="Button1" runat="server" CssClass="btn btn-danger" OnClick="Button1_Click" Text="Delete" />
           <asp:Button ID="Button2" runat="server" CssClass="btn btn-info" OnClick="Button2_Click" Text="Update" />
       </div>
     </div>
    </div>
</form>
</asp:Content>

