<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="EMS_UI.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div>
        <h4 style="font-size: medium">Register a new user</h4>
        <hr />
        <p>
            <asp:Literal runat="server" ID="StatusMessage" />
        </p>                
        <div style="margin-bottom:10px">
            <asp:Label runat="server" AssociatedControlID="UserName" CssClass="form-control">User name</asp:Label>
            <div>
                <asp:TextBox runat="server" ID="UserName" CssClass="form-control" />                
            &nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Size="Medium" ForeColor="Red">Username Required !</asp:RequiredFieldValidator>
            </div>
        </div>
        <div style="margin-bottom:10px">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="form-control">Password</asp:Label>
            <div>
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />                
            &nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Size="Medium" ForeColor="Red">Password Required !</asp:RequiredFieldValidator>
            </div>
        </div>
        <div style="margin-bottom:10px">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="form-control">Confirm password</asp:Label>
            <div>
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />                
            &nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Size="Medium" ForeColor="Red">Confirm Password Required !</asp:RequiredFieldValidator>
&nbsp;&nbsp;
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" ErrorMessage="CompareValidator" Font-Bold="True" Font-Size="Medium" ForeColor="Red">Password and Confirm Password should match !</asp:CompareValidator>
            </div>
        </div>
        <div>
            <div>
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" ID="ButtonRegister" CssClass="btn btn-info " />
            </div>
        </div>
    </div>
</asp:Content>
