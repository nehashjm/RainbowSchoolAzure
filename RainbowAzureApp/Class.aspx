<%@ Page Title="" Language="C#" MasterPageFile="~/Rainbowmaster.Master" AutoEventWireup="true" CodeBehind="Class.aspx.cs" Inherits="RainbowAzureApp.Class" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2 class="text-center">Class Page<table class="w-100">
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1232px" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ClassID" DataSourceID="SqlDataSource1">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="ClassID" HeaderText="ClassID" ReadOnly="True" SortExpression="ClassID" />
                    <asp:BoundField DataField="ClassName" HeaderText="ClassName" SortExpression="ClassName" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RainbowSchoolDbConnectionString3 %>" DeleteCommand="DELETE FROM [Classes] WHERE [ClassID] = @original_ClassID AND [ClassName] = @original_ClassName" InsertCommand="INSERT INTO [Classes] ([ClassID], [ClassName]) VALUES (@ClassID, @ClassName)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:RainbowSchoolDbConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [Classes]" UpdateCommand="UPDATE [Classes] SET [ClassName] = @ClassName WHERE [ClassID] = @original_ClassID AND [ClassName] = @original_ClassName">
                <DeleteParameters>
                    <asp:Parameter Name="original_ClassID" Type="Int32" />
                    <asp:Parameter Name="original_ClassName" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ClassID" Type="Int32" />
                    <asp:Parameter Name="ClassName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ClassName" Type="String" />
                    <asp:Parameter Name="original_ClassID" Type="Int32" />
                    <asp:Parameter Name="original_ClassName" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    </table>
</h2>
</asp:Content>
