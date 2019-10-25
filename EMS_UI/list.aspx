<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="EMS_UI.list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="text-center">Employee List</h2>
    <p>
        <asp:GridView ID="GridViewEmpList" runat="server" CssClass="table table-hover table-striped" EmptyDataText="No Employees Found." DataKeyNames="Number" OnRowDeleting="GridViewEmpList_RowDeleting">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
    </p>
    <script>
        $(document).on("click", "a", function () {
            if (this.innerHTML.indexOf("Delete") == 0) {
                return confirm("Are you sure you want to delete this record?");
            }
        });
    </script>
</asp:Content>
