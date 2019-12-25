<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Books.aspx.cs" Inherits="Rahmatullah_1250255.App_Pages.Books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div class="row">
       <div class="col">
           <h2>Books List</h2>
           <div class="d-flex justify-content-end mb-1">
                 <a runat="server" href="~/App_Pages/Add_Books.aspx" class="btn btn-primary btn-sm">Add New Books</a>
            </div>
          <div class="row">
       <div class="col">
          <%--<h2>Book In Store</h2>--%>
           <asp:GridView CssClass="table table-bordered" ID="dsbook" runat="server" AutoGenerateColumns="False" DataSourceID="dsbooks" DataKeyNames="BookId">
               <Columns>
                   <asp:BoundField DataField="BookId" HeaderText="BookId" SortExpression="BookId" InsertVisible="False" ReadOnly="True" />
                   <asp:BoundField DataField="PublisherId" HeaderText="PublisherId" SortExpression="PublisherId" />
                   <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                   <asp:BoundField DataField="BookPrice" HeaderText="BookPrice" SortExpression="BookPrice" />
                   <asp:BoundField DataField="CoverPage" HeaderText="CoverPage" SortExpression="CoverPage" />
                   <asp:HyperLinkField DataNavigateUrlFields="BookId" DataNavigateUrlFormatString="~/App_Pages/EditBook.aspx?id={0}" Text="Edit" />
               </Columns>
               <EmptyDataTemplate>
                   <div class="alert alert-info">
                       No records found.Please inset..
                   </div>
               </EmptyDataTemplate>
           </asp:GridView>
           <asp:SqlDataSource ID="dsbooks" runat="server" ConnectionString="<%$ ConnectionStrings:BookDbConstr %>" InsertCommand="INSERT INTO [Books] ([PublisherId], [BookName], [BookPrice], [CoverPage]) VALUES (@PublisherId, @BookName, @BookPrice, @CoverPage)" SelectCommand="SELECT * FROM [Books]" DeleteCommand="DELETE FROM [Books] WHERE [BookId] = @BookId" UpdateCommand="UPDATE [Books] SET [PublisherId] = @PublisherId, [BookName] = @BookName, [BookPrice] = @BookPrice, [CoverPage] = @CoverPage WHERE [BookId] = @BookId">
               <DeleteParameters>
                   <asp:Parameter Name="BookId" Type="Int32" />
               </DeleteParameters>
               <InsertParameters>
                   <asp:Parameter Name="PublisherId" Type="Int32" />
                   <asp:Parameter Name="BookName" Type="String" />
                   <asp:Parameter Name="BookPrice" Type="Decimal" />
                   <asp:Parameter Name="CoverPage" Type="String" />
               </InsertParameters>
               <UpdateParameters>
                   <asp:Parameter Name="PublisherId" Type="Int32" />
                   <asp:Parameter Name="BookName" Type="String" />
                   <asp:Parameter Name="BookPrice" Type="Decimal" />
                   <asp:Parameter Name="CoverPage" Type="String" />
                   <asp:Parameter Name="BookId" Type="Int32" />
               </UpdateParameters>
           </asp:SqlDataSource>
       </div>
   </div>
       </div>
   </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
