<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add_Publisher.aspx.cs" Inherits="Rahmatullah_1250255.App_Pages.Add_Publisher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <h2>Add Publisher</h2>
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                    <div runat="server" class="alert" id="alert">
                        <div class="form-group row">
                            <asp:Label CssClass="col-form-label col-md-2" AssociatedControlID="publisher" ID="Label1" runat="server" Text="Publisher Name"></asp:Label>
                            <div class="col-md-2">
                                <asp:TextBox CssClass="form-control form-control-sm  col-md-2" ID="publisher" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="publisher" CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="name required!"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="col-md-10">
                            <asp:Button CssClass="btn btn-primary" ID="Insert" runat="server" Text="Save" OnClick="Insert_Click" />
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:SqlDataSource ID="dspublisher" runat="server" 
                ConnectionString="<%$ ConnectionStrings:BookDbConstr %>" 
                DeleteCommand="DELETE FROM [Publisher] WHERE [PublisherId] = @PublisherId" 
                InsertCommand="INSERT INTO [Publisher] ([publisherName]) VALUES (@publisherName)" 
                SelectCommand="SELECT * FROM [Publisher]" UpdateCommand="UPDATE [Publisher] SET [publisherName] = @publisherName WHERE [PublisherId] = @PublisherId">
                <DeleteParameters>
                    <asp:Parameter Name="PublisherId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="publisherName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="publisherName" Type="String" />
                    <asp:Parameter Name="PublisherId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <a runat="server" href="~/App_Pages/Publisher.aspx">Back to list</a>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
