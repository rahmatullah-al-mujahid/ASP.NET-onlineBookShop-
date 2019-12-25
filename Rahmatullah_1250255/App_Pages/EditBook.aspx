<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditBook.aspx.cs" Inherits="Rahmatullah_1250255.App_Pages.EditBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col">
            <h2>Edit Books</h2>
            <asp:HiddenField ID="HiddenField1" runat="server" Value="" />
                   <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                   <div class="form-group row">
                       <asp:Label CssClass="col-form-label col-md-2" AssociatedControlID="publishername" ID="Label3" runat="server" Text="Publisher Name"></asp:Label>
                        <div class="col-md-10">
                            <asp:DropDownList  CssClass="form-control form-control-sm  col-md-2" ID="publishername" runat="server"  DataTextField="publisherName" DataValueField="PublisherId">
                                
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
                       <Label class="col-form-label col-md-2"  ID="Label5" runat="server" >Current picture</Label>
                       <div class="col-md-10">
                           <asp:Image Width="40px" ID="coverpage" runat="server" />
                         </div>
                   </div>
                    <div class="form-group row">
                        <asp:Label CssClass="col-form-label col-md-2" AssociatedControlID="picture" ID="Label6" runat="server" Text="Cover Page"></asp:Label>
                        <div class="col-md-10">
                            <asp:FileUpload ID="picture" runat="server" CssClass="form-control form-control-sm btn btn-sm" />
                        </div>
                    </div>
                    <div class="col-md-10">
                           <asp:Button CssClass="btn btn-primary" ID="Insert" runat="server" Text="Update" OnClick="Insert_Click" />
                     </div>        
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
