<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add_Books.aspx.cs" Inherits="Rahmatullah_1250255.App_Pages.Add_Books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
       <div class="col">
           <asp:UpdatePanel ID="UpdatePanel1" runat="server">
               <ContentTemplate>
                   <h2>Add New Books</h2>
                   <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                   <div class="form-group row">
                       <asp:Label CssClass="col-form-label col-md-2" AssociatedControlID="publishername" ID="Label3" runat="server" Text="Publisher Name"></asp:Label>
                        <div class="col-md-10">
                            <asp:DropDownList AppendDataBoundItems="True" CssClass="form-control form-control-sm  col-md-2" ID="publishername" runat="server" DataSourceID="dspublisher" DataTextField="publisherName" DataValueField="PublisherId">
                                <asp:ListItem Selected="True">Select one</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator InitialValue="Select one" ControlToValidate="publishername" ID="RequiredFieldValidator3" CssClass="text-danger" runat="server" ErrorMessage="publisher required!"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                   <div class="form-group row">
                       <asp:Label CssClass="col-form-label col-md-2" AssociatedControlID="bookname" ID="Label1" runat="server" Text="Book Name"></asp:Label>
                       <div class="col-md-10">
                           <asp:TextBox CssClass="form-control form-control-sm  col-md-2" ID="bookname" runat="server"></asp:TextBox>
                           <asp:RequiredFieldValidator ControlToValidate="bookname" CssClass="btn-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="name required!"></asp:RequiredFieldValidator>
                       </div>
                   </div>
                   <div class="form-group row">
                       <asp:Label CssClass="col-form-label col-md-2" AssociatedControlID="bookprice" ID="Label2" runat="server" Text="Book Price"></asp:Label>
                       <div class="col-md-10">
                           <asp:TextBox CssClass="form-control form-control-sm  col-md-2" ID="bookprice" runat="server"></asp:TextBox>
                           <asp:RequiredFieldValidator ControlToValidate="bookprice" CssClass="btn-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="price required!"></asp:RequiredFieldValidator>
                       </div>
                   </div>
                    <div class="form-group row">
                        <asp:Label CssClass="col-form-label col-md-2" AssociatedControlID="picture" ID="Label6" runat="server" Text="Cover Page"></asp:Label>
                        <div class="col-md-10">
                            <asp:FileUpload ID="picture" runat="server" CssClass="form-control form-control-sm btn btn-sm" />
                        </div>
                    </div>
                    <div class="col-md-10">
                           <asp:Button CssClass="btn btn-primary" ID="Insert" runat="server" Text="Save to database" OnClick="Insert_Click" />
                     </div>                  
                   <asp:SqlDataSource ID="dsbook" runat="server" ConnectionString="<%$ ConnectionStrings:BookDbConstr %>" DeleteCommand="DELETE FROM [Books] WHERE [BookId] = @BookId" InsertCommand="INSERT INTO [Books] ([PublisherId], [BookName], [BookPrice], [CoverPage]) VALUES (@PublisherId, @BookName, @BookPrice, @CoverPage)" SelectCommand="SELECT * FROM [Books]" UpdateCommand="UPDATE [Books] SET [PublisherId] = @PublisherId, [BookName] = @BookName, [BookPrice] = @BookPrice, [CoverPage] = @CoverPage WHERE [BookId] = @BookId">
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
                   <asp:SqlDataSource ID="dspublisher" runat="server" ConnectionString="<%$ ConnectionStrings:BookDbConstr %>" SelectCommand="SELECT [PublisherId], [publisherName] FROM [Publisher]"></asp:SqlDataSource>
               </ContentTemplate>
               <Triggers>
                   <asp:PostBackTrigger ControlID="Insert" />
               </Triggers>
           </asp:UpdatePanel>
            <a runat="server" href="~/App_Pages/Books.aspx">Back to list</a>
       </div>
   </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
