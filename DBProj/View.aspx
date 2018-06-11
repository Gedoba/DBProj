<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="DBProj.View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 119px;
        }
        .auto-style2 {
            width: 119px;
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridEmployees" runat="server" AutoGenerateColumns="False" DataKeyNames="Employee_Id" DataSourceID="SqlDataSource1" Height="294px" Width="1052px" style="z-index: 1; left: 25px; top: 445px; position: absolute; height: 294px; width: 1052px; margin-top: 0px">
            <Columns>
                <asp:BoundField DataField="Employee_Id" HeaderText="Employee_Id" ReadOnly="True" SortExpression="Employee_Id" />
                <asp:BoundField DataField="First_name" HeaderText="First_name" SortExpression="First_name" />
                <asp:BoundField DataField="Last_name" HeaderText="Last_name" SortExpression="Last_name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Phone_number" HeaderText="Phone_number" SortExpression="Phone_number" />
                <asp:BoundField DataField="Hire_date" HeaderText="Hire_date" SortExpression="Hire_date" />
                <asp:BoundField DataField="Job_id" HeaderText="Job_id" SortExpression="Job_id" />
                <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                <asp:BoundField DataField="Commission_pct" HeaderText="Commission_pct" SortExpression="Commission_pct" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Employees]"></asp:SqlDataSource>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Employee_Id"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="textEmployee" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="First_name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="textFirstName" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Last_name"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="textLastName" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="textEmail" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label5" runat="server" Text="Phone_number"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="textPhone" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label6" runat="server" Text="Hire_date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="textHireDate" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label7" runat="server" Text="Job_id"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="textJobID" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label8" runat="server" Text="Salary"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="textSalary" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label9" runat="server" Text="Commission_pct"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="textCommisionPct" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
        </p>
    </form>
</body>
</html>
