<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DemoWebForms._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    

    <table class="w-100">
        <tr>
            <td colspan="2" style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: bold; color: #333333">Complete CRUD Operations in ASP.Net C# with SQL using Stored Procedure</td>
        </tr>
        <tr>
            <td style="width: 609px">
                <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Product ID"></asp:Label>
            </td>
            <td style="width: 1141px">
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 609px">
                <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Item Name"></asp:Label>
            </td>
            <td style="width: 1141px">
                <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 24px; width: 609px">
                <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="Specification"></asp:Label>
            </td>
            <td style="height: 24px; width: 1141px">
                <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 24px; width: 609px">
                <asp:Label ID="Label4" runat="server" Font-Size="Medium" Text="Unit"></asp:Label>
            </td>
            <td style="height: 24px; width: 1141px">
                <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Medium" Width="200px">
                    <asp:ListItem>PCS</asp:ListItem>
                    <asp:ListItem>KG</asp:ListItem>
                    <asp:ListItem>DZ</asp:ListItem>
                    <asp:ListItem>Ltr</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 609px">
                <asp:Label ID="Label5" runat="server" Font-Size="Medium" Text="Status"></asp:Label>
            </td>
            <td style="width: 1141px">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Running</asp:ListItem>
                    <asp:ListItem>Unused</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td style="width: 609px">
                <asp:Label ID="Label6" runat="server" Font-Size="Medium" Text="Creation Date"></asp:Label>
            </td>
            <td style="width: 1141px">
                <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 609px">&nbsp;</td>
            <td style="width: 1141px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 36px; width: 609px"></td>
            <td style="width: 1141px; height: 36px">
                <asp:Button ID="Button1" runat="server" BackColor="#0000CC" Font-Size="Medium" ForeColor="White" OnClick="Insert" Text="Insert" Width="76px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="#0000CC" Font-Size="Medium" ForeColor="White" OnClick="Update" Text="Update" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" BackColor="#0000CC" Font-Size="Medium" ForeColor="White" OnClick="Delete" Text="Delete" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" BackColor="#0000CC" Font-Size="Medium" ForeColor="White" OnClick="Search" Text="Search" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button5" runat="server" BackColor="#0000CC" Font-Size="Medium" ForeColor="White" OnClick="Load" Text="Load" Width="83px" />
            </td>
        </tr>
        <tr>
            <td style="height: 24px; width: 609px">&nbsp;</td>
            <td style="width: 1141px; height: 36px">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="height: 24px;">
                <asp:GridView ID="GridView1" runat="server" Width="1483px">
                    <HeaderStyle BackColor="#6600CC" ForeColor="White" />
                </asp:GridView>
            </td>
        </tr>
    </table>
&nbsp;&nbsp;&nbsp;
    <p style="margin-left: 80px">
    </p>

    

</asp:Content>
