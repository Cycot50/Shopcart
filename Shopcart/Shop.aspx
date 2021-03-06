﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="Shopcart.Shop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="dataProductsByCategory" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Products] WHERE ([Category] = @Category) ORDER BY [Product]">
        <SelectParameters>
            <asp:QueryStringParameter Name="Category" QueryStringField="Category" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="gvProductsByCategory" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="dataProductsByCategory" ForeColor="#333333" GridLines="None" Height="189px" Width="551px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
            <asp:BoundField DataField="Product" HeaderText="Product" SortExpression="Product" />
            <asp:BoundField DataField="Price" DataFormatString="{0:c}" HeaderText="Price" SortExpression="Price" />
            <asp:ImageField DataImageUrlField="Image">
                <ControlStyle Height="50px" Width="50px" />
            </asp:ImageField>
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="ShowDetails.aspx?ID={0}" Text="View" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>

</asp:Content>
