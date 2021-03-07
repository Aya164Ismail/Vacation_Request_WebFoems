<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="VacationRequestWebForm.Login" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1 style="text-align: center; color: transparent">Login as Manager</h1>
    <br />
    <br />
    <div style="text-align: center" class="form-group">

        <div>
            <label>Your UserName</label>
            <asp:TextBox ID="UserName" runat="server" />
            <asp:RequiredFieldValidator runat="server" ID="txtUserName" ControlToValidate="UserName" ErrorMessage="Required" />
        </div>
        <br />
        <div>
            <label>Password</label>
            <asp:TextBox ID="txtPassword" runat="server" />
        </div>
        <br />
        <div>
            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primry btn-larg" OnClick="btnLogin_Click" BorderColor="LightBlue" BackColor="LightBlue" />
        </div>
        <br />
        <div>
            <asp:Literal ID="message" runat="server" />
        </div>
    </div>
</asp:Content>
