﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EMS_UI.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div>
         <h4 style="font-size: medium">Log In</h4>
         <hr />
         <asp:PlaceHolder runat="server" ID="LoginStatus" >
            <p>
               <asp:Literal runat="server" ID="StatusText" />
            </p>
         </asp:PlaceHolder>
         <asp:PlaceHolder runat="server" ID="LoginForm">
            <div style="margin-bottom: 10px">
               <asp:Label runat="server" AssociatedControlID="UserName">User name</asp:Label>
               <div>
                  <asp:TextBox runat="server" ID="UserName" />
                   <asp:RequiredFieldValidator ControlToValidate="UserName" ID="RequiredFieldValidator1" runat="server" ErrorMessage="UserName is Required !">
                   </asp:RequiredFieldValidator>
               </div>
            </div>
            <div style="margin-bottom: 10px">
               <asp:Label runat="server" AssociatedControlID="Password">Password</asp:Label>
               <div>
                  <asp:TextBox runat="server" ID="Password" TextMode="Password" />
                   <asp:RequiredFieldValidator ControlToValidate="Password" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password Is required !"></asp:RequiredFieldValidator>
               </div>
            </div>
            <div style="margin-bottom: 10px">
               <div>
                  <asp:Button ID="ButtonLogin" runat="server" OnClick="ButtonLogin_Click" Text="Log in" />
               </div>
                <div>
                  <asp:Button ID="ButtonRegister" runat="server" OnClick="ButtonRegister_Click" Text="Register" CausesValidation="false" />
               </div>
            </div>
         </asp:PlaceHolder>
      </div>
</asp:Content>
