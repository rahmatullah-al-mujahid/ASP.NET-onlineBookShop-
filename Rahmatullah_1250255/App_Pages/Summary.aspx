<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Summary.aspx.cs" Inherits="Rahmatullah_1250255.App_Pages.Summary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col">
            <h2>Master Data</h2>
            <div class="card mb-3">
                <div class="card-body">
                <h3>Publisher</h3>
                <asp:GridView CssClass="table table-bordered" ID="dgpublisher" runat="server" SelectedIndex="0" AutoGenerateColumns="False" DataKeyNames="PublisherId" DataSourceID="DsPublisher">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="PublisherId" HeaderText="PublisherId" InsertVisible="False" ReadOnly="True" SortExpression="PublisherId" />
                        <asp:BoundField DataField="publisherName" HeaderText="publisherName" SortExpression="publisherName" />
                    </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="DsPublisher" runat="server" ConnectionString="<%$ ConnectionStrings:BookDbConstr %>" SelectCommand="SELECT * FROM [Publisher]"></asp:SqlDataSource>
            </div>
            </div>
           <div class="card">
                <div class="card-body">
                <h3>Books</h3>
                <asp:GridView CssClass="table table-bordered" ID="dgbooks" runat="server" AutoGenerateColumns="False" DataKeyNames="BookId" DataSourceID="DsBooks">
                    <Columns>
                        <asp:BoundField DataField="BookId" HeaderText="BookId" InsertVisible="False" ReadOnly="True" SortExpression="BookId" />
                        <asp:BoundField DataField="PublisherId" HeaderText="PublisherId" SortExpression="PublisherId" />
                        <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                        <asp:BoundField DataField="BookPrice" HeaderText="BookPrice" SortExpression="BookPrice" />
                        <asp:BoundField DataField="CoverPage" HeaderText="CoverPage" SortExpression="CoverPage" />
                    </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="DsBooks" runat="server" ConnectionString="<%$ ConnectionStrings:BookDbConstr %>" SelectCommand="SELECT * FROM [Books] WHERE ([PublisherId] = @PublisherId)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="dgpublisher" Name="PublisherId" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
            </div>
           </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
