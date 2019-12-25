<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Publisher.aspx.cs" Inherits="Rahmatullah_1250255.App_Pages.Publisher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col">
            <h2>Publishers List</h2>
            <div class="d-flex justify-content-end mb-1">
                 <a runat="server" href="~/App_Pages/Add_Publisher.aspx" class="btn btn-primary btn-sm">Add New</a>
            </div>
            <asp:GridView CssClass="table table-bordered table-stripped" ID="dgpublisher" runat="server" AutoGenerateColumns="False" DataKeyNames="PublisherId" DataSourceID="dspublisher" AllowPaging="True" PageSize="5">
                <Columns>
                    <asp:BoundField DataField="PublisherId" HeaderText="PublisherId" InsertVisible="False" ReadOnly="True" SortExpression="PublisherId" />
                    <asp:TemplateField HeaderText="Publisher Name" SortExpression="publisherName">
                        <EditItemTemplate>
                            <asp:TextBox ID="publishername" runat="server" Text='<%# Bind("publisherName") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="publishername" CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("publisherName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="...">
                        <%--<ControlStyle CssClass="btn btn-sm" />--%>
                        <ItemTemplate>
                            <asp:LinkButton CommandName="Edit" CssClass="btn btn-outline-primary" ToolTip="Edit this item" ID="LinkButton1" runat="server">Edit</asp:LinkButton>
                            <asp:LinkButton CommandName="Delete" CausesValidation="false" OnClientClick="return confirm('Are you sure you want delete');" CssClass="btn btn-outline-danger" ToolTip="Delete this item" ID="LinkButton2" runat="server">Delete</asp:LinkButton>
                        </ItemTemplate>
                        <EditItemTemplate>
                             <asp:LinkButton CommandName="Update" ToolTip="Save this changes" CssClass="btn btn-outline-primary btn-sm" ID="LinkButton1" runat="server">Update</asp:LinkButton>
                            <asp:LinkButton CommandName="Cancel" CausesValidation="false" ToolTip="Cancel changes" CssClass="btn btn-outline-info btn-sm" ID="LinkButton2" runat="server">Cancel</asp:LinkButton>
                        </EditItemTemplate>
                        <ItemStyle CssClass="btn btn-sm" />
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    <div class="alert alert-info">
                       <p>No recors found. Plese addsome..</p>
                   </div>
                </EmptyDataTemplate>
            </asp:GridView>
            <asp:SqlDataSource ID="dspublisher" runat="server" ConnectionString="<%$ ConnectionStrings:BookDbConstr %>" DeleteCommand="DELETE FROM [Publisher] WHERE [PublisherId] = @PublisherId" InsertCommand="INSERT INTO [Publisher] ([publisherName]) VALUES (@publisherName)" SelectCommand="SELECT * FROM [Publisher]" UpdateCommand="UPDATE [Publisher] SET [publisherName] = @publisherName WHERE [PublisherId] = @PublisherId">
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
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
    <script>
        function confirmDelete() {
           
            if (confirm("Are you sure to delete?")) {
                return true;
            }
            else {
               
                return false;
            }
        }
    </script>
</asp:Content>
