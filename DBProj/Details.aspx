<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="DBProj.Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 119px;
        }
        .auto-style4 {
            width: 304px;
        }
        .auto-style2 {
            width: 119px;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
            width: 304px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <table style="width:39%;">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Employee_Id"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="textEmployee" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="First_name"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="textFirstName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Last_name"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="textLastName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="textEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label5" runat="server" Text="Phone_number"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="textPhone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label6" runat="server" Text="Hire_date"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="textHireDate" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label7" runat="server" Text="Job_id"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="textJobID" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label8" runat="server" Text="Salary"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="textSalary" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label9" runat="server" Text="Commission_pct"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="textCommisionPct" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="ButtonUpdate" runat="server" OnClick="ButtonUpdate_Click" Text="Update" />
                </td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
