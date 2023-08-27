<%@ Page Title="Employee" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="webForm_Task1.Employee" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %> Data</h2>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="employeeID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="633px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="employeeID" HeaderText="employeeID" InsertVisible="False" ReadOnly="True" SortExpression="employeeID" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="position" HeaderText="position" SortExpression="position" />
                <asp:BoundField DataField="birthDate" HeaderText="birthDate" SortExpression="birthDate" />
                <asp:BoundField DataField="hireDate" HeaderText="hireDate" SortExpression="hireDate" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tasksConnectionString %>" ProviderName="<%$ ConnectionStrings:tasksConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [employees]"></asp:SqlDataSource>
    </p>
    
    </main>
</asp:Content>
