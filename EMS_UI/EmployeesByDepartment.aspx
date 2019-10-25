<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeesByDepartment.aspx.cs" Inherits="EMS_UI.EmployeesByDepartment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="text-center">
        Employees By Department.
    </h2>
    <div>

        Select Department :
        <asp:DropDownList ID="DropDownListDeptList" DataTextField="Name" DataValueField="DepartmentID" runat="server">
        </asp:DropDownList>
&nbsp;&nbsp;
        <asp:Button ID="ButtonSearch" runat="server" CssClass="btn btn-warning" OnClick="ButtonSearch_Click" Text="Search" />
        <br />
        <br />
        <asp:Label ID="LabelDeptName" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:GridView ID="GridViewEmployees" runat="server" EmptyDataText="No Employees Found">
        </asp:GridView>
        <br />

    </div>
</asp:Content>
