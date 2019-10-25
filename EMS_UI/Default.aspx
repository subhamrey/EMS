<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EMS_UI._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   <h1>Employee Management System</h1>

    <div>
        <asp:HyperLink ID="HyperLinkListEmp" runat="server" NavigateUrl="~/list.aspx">Employee List</asp:HyperLink>
        <br />
        <asp:HyperLink ID="HyperLinkAddEmp" runat="server" NavigateUrl="~/add.aspx">Add Employee</asp:HyperLink>
        <br />
        <asp:HyperLink ID="HyperLinkEditEmp" runat="server" NavigateUrl="~/Edit.aspx">Edit Employee</asp:HyperLink>
        <br />
        <asp:HyperLink ID="HyperLinkDelEmp" runat="server" NavigateUrl="~/Delete.aspx">Delete Employee</asp:HyperLink>
        <br />
        <asp:HyperLink ID="HyperLinkShow" runat="server" NavigateUrl="~/EmployeesByDepartment.aspx">Employees By Department</asp:HyperLink>
    </div>

</asp:Content>
