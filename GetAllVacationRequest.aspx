<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="GetAllVacationRequest.aspx.cs" Inherits="VacationRequestWebForm.GetAllVacationRequest" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1 style="text-align: center">View all Vacation Requests</h1>
    <br />
    <br />
    <div >

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" ShowFooter="true" DataKeyNames="Id"
            ShowHeaderWhenEmpty="true" OnRowDataBound="GridView1_RowDataBound">
            <Columns>
                <asp:TemplateField HeaderText="Submission Date">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("CreatedDate") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtCreatedDate" Text='<%# Eval("CreatedDate") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtCreatedDateFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Employee Name">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("EmployeeName") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtEmployeeName" Text='<%# Eval("EmployeeName") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtEmployeeNameFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Contact">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Department") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtDepartment" Text='<%# Eval("Department") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtDepartmentFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="From">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("VacationDatesFrom") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtVacationDatesFrom" Text='<%# Eval("VacationDatesFrom") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtVacationDatesFromFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="To">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("VacationDatesTo") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtVacationDatesTo" Text='<%# Eval("VacationDatesTo") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtVacationDatesToFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Returning">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Returning") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtReturning" Text='<%# Eval("Returning") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtReturningFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="TotalDays">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("TotalDays") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtTotalDays" Text='<%# Eval("TotalDays") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtTotalDaysFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Notes">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Notes") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtNotes" Text='<%# Eval("Notes") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtNotesToFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <asp:Panel ID="details" runat="server" />
    </div>
</asp:Content>
