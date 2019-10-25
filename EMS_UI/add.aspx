<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="EMS_UI.add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Add New Employee</h2>
    <table style="margin:1px">
        <tr>
            <td>Name:</td>
            <td><asp:TextBox ID="TextBoxName" runat="server" CssClass="form-control" MaxLength="20"></asp:TextBox>&nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxName" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Font-Bold="True" Font-Overline="False" Font-Size="Medium">Name is Required !</asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>Email:</td>
            <td>
                <asp:TextBox ID="TextBoxEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
             </td>
            <td>&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Size="Medium" ForeColor="Red">Email is required !</asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td>Gender:</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Transgender</asp:ListItem>
                </asp:RadioButtonList>
             </td>
            <td>&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonList" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Size="Medium" ForeColor="Red">Select gender !</asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td>Department:</td>
            <td>
                <asp:DropDownList ID="DropDownListDept" runat="server" CssClass="form-control" DataTextField="Name" DataValueField="DepartmentID">
                </asp:DropDownList>
             </td>
            <td>&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownListDept" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Size="Medium" ForeColor="Red">Select Department !</asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td>Date Of Birth:</td>
            <td>
                <asp:TextBox ID="TextBoxDOB" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
              </td>
            <td>&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxDOB" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True">Date Of Birth Required !</asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td>Date Of Joining:</td>
            <td>
                <asp:TextBox ID="TextBoxDOJ" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
             </td>
            <td>&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBoxDOJ" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True">Date Of Joining Required !</asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td>Manager:</td>
            <td>
                <asp:DropDownList ID="DropDownListManager" runat="server" CssClass="form-control" DataTextField="Name" DataValueField="Number">
                </asp:DropDownList>
             </td>
            <td>&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownListManager" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Size="Medium" ForeColor="Red">Select Manager !</asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td>Phone No.:</td>
            <td>
                <asp:TextBox ID="TextBoxPhnNo" runat="server" CssClass="form-control" MaxLength="10" TextMode="Number"></asp:TextBox>
             </td>
            <td>&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBoxPhnNo" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Size="Medium" ForeColor="Red">Phone No is Required !</asp:RequiredFieldValidator>
             </td>
        </tr>
        <tr>
            <td>Job Title:</td>
            <td>
                <asp:DropDownList ID="DropDownListJobTitle" runat="server" CssClass="form-control">
                    <asp:ListItem>Developer</asp:ListItem>
                    <asp:ListItem>Analyst</asp:ListItem>
                    <asp:ListItem>Salesman</asp:ListItem>
                    <asp:ListItem>Manager</asp:ListItem>
                    <asp:ListItem>Tester</asp:ListItem>
                    <asp:ListItem>Accountant</asp:ListItem>
                    <asp:ListItem>Cashier</asp:ListItem>
                    <asp:ListItem>President</asp:ListItem>
                    <asp:ListItem>Senior Developer</asp:ListItem>
                    <asp:ListItem>CEO</asp:ListItem>
                    <asp:ListItem>COO</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownListJobTitle" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Size="Medium" ForeColor="Red">Select Job Title!</asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>Salary:</td>
            <td>
                <asp:TextBox ID="TextBoxSalary" runat="server" CssClass="form-control" OnTextChanged="TextBox3_TextChanged" TextMode="Number"></asp:TextBox>
             </td>
            <td>&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxSalary" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Size="Medium" ForeColor="Red">Enter Salary !</asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td>Comission:</td>
            <td>
                <asp:TextBox ID="TextBoxComission" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
             </td>
            <td>&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBoxComission" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Size="Medium" ForeColor="Red">Enter Comission !</asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td></td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="ButtonCancel" runat="server" CssClass="btn btn-danger" Text="Cancel" CausesValidation="False" OnClick="ButtonCancel_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="ButtonSubmit_Click" />
             </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
