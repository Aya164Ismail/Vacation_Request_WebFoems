<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="VacationRequestWebForm.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <%--<h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>--%>
    <h1 style="text-align: center">Vacation Request</h1>
    <br />
    <div style="text-align: center" class="form-group">

        <div>
            <label>Submission Date</label>
            <asp:TextBox ID="SubmissionDate" runat="server" />
            <asp:RequiredFieldValidator runat="server" ID="txtDateSubmisision" ControlToValidate="SubmissionDate" ErrorMessage="Required" />
        </div>
        <br />
        <div>
            <label>Employee Name</label>
            <asp:TextBox ID="EmployeeName" runat="server" />
            <asp:RequiredFieldValidator runat="server" ID="textEmployeeName" ControlToValidate="EmployeeName" ErrorMessage="Required" />

        </div>
        <br />
        <div>
            <label>Title</label>
            <asp:TextBox ID="TextTitle" runat="server" />
            <asp:RequiredFieldValidator runat="server" ID="txtTextTitle" ControlToValidate="TextTitle" ErrorMessage="Required" />

        </div>
        <br />
        <div>
            <label>Department</label>
            <asp:DropDownList ID="TextDepartment" runat="server">
                <asp:ListItem Text="Please choose your department" Value="" />
                <asp:ListItem Text="IT" Value="IT" />
                <asp:ListItem Text="HR" Value="HR" />
                <asp:ListItem Text="Sales" Value="Sales" />
            </asp:DropDownList>
            <asp:RequiredFieldValidator runat="server" ID="txtTextDepartment" ControlToValidate="TextDepartment" ErrorMessage="Required" />

        </div>
        <br />
        <div class="form-group">
            <label>Vacation Dates From</label>
            <div style="margin-left: 440px">
                <asp:Calendar ID="VacationDatesFrom" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="14pt" ForeColor="Black" Height="210px" NextPrevFormat="FullMonth" OnSelectionChanged="VacationDatesFrom_SelectionChanged" TitleFormat="Month" Width="300px">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="10pt" ForeColor="#333333" Height="12pt" />
                    <DayStyle Width="14%" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                    <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                    <TodayDayStyle BackColor="#CCCC99" />
                </asp:Calendar>
            </div>
            <asp:Literal ID="message1" runat="server" />
        </div>
        <br />
        <div class="form-group">
            <label>Vacation Dates To</label>
            <div style="margin-left: 440px">
                <asp:Calendar ID="VacationDatesTo" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="14pt" ForeColor="Black" Height="210px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="304px" OnSelectionChanged="VacationDatesTo_SelectionChanged">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="10pt" ForeColor="#333333" Height="12pt" />
                    <DayStyle Width="14%" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                    <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                    <TodayDayStyle BackColor="#CCCC99" />
                </asp:Calendar>
            </div>
            <asp:Literal ID="message2" runat="server" />
        </div>
        <br />
        <div class="form-group">
            <label>Returning</label>
            <div style="margin-left: 440px">
                <asp:Calendar ID="TextReturning" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="14pt" ForeColor="Black" Height="210px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="300px" OnSelectionChanged="TextReturning_SelectionChanged">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="10pt" ForeColor="#333333" Height="12pt" />
                    <DayStyle Width="14%" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                    <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                    <TodayDayStyle BackColor="#CCCC99" />
                </asp:Calendar>
            </div>
            <asp:Literal ID="message3" runat="server" />
        </div>
        <br />
        <div class="form-group">
            <label>Notes</label>
            <asp:TextBox ID="TextNotes" runat="server" />
        </div>
        <br />
        <div>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit your request" CssClass="btn btn-primry btn-larg" OnClick="btnSubmit_Click" BorderColor="LightBlue" BackColor="LightBlue" />
        </div>
        <br />
        <div class="message">
            <asp:Literal ID="ltmessage" runat="server" />
        </div>
    </div>
</asp:Content>
