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
        .auto-style4 {
            width: 304px;
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
        </div>
        <asp:GridView ID="GridEmployees" runat="server" AutoGenerateColumns="False" DataKeyNames="Employee_Id" DataSourceID="SqlDataSource1" Height="294px" Width="1052px" style="z-index: 1; left: 11px; top: 378px; position: absolute; height: 294px; width: 1052px; margin-top: 0px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
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
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Employees]"></asp:SqlDataSource>
        <table style="width:39%;">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Employee_Id"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="textEmployee" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label10" runat="server" Text="First Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextSearchFname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="First_name"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="textFirstName" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label11" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextSearchLname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Last_name"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="textLastName" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:Label ID="Label12" runat="server" Text="Min. Salary"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextSearchMinSal" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="textEmail" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label13" runat="server" Text="Max. Salary"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextSearchMaxSal" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label5" runat="server" Text="Phone_number"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="textPhone" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label14" runat="server" Text="JobID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextSearchJobID" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label6" runat="server" Text="Hire_date"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="textHireDate" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label7" runat="server" Text="Job_id"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="textJobID" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label8" runat="server" Text="Salary"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="textSalary" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label9" runat="server" Text="Commission_pct"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="textCommisionPct" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
            <asp:Button ID="ButtonSave" runat="server" OnClick="Button1_Click" Text="Save" />
                </td>
                <td class="auto-style4">
                    <asp:Button ID="ButtonUpdate" runat="server" OnClick="ButtonUpdate_Click" Text="Update" />
                </td>
                <td class="auto-style4">
                    <asp:Button ID="ButtonSearch" runat="server" OnClick="Button2_Click" Text="Search" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
