<%@ Page Title="" Language="C#" MasterPageFile="~/Rainbowmaster.Master" AutoEventWireup="true" CodeBehind="Subject.aspx.cs" Inherits="RainbowAzureApp.Subject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 1764px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="text-center">Subjcet Page<table class="w-100">
    <tr>
        <td class="auto-style1">
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1259px" AutoGenerateColumns="False" DataKeyNames="SubjectID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="SubjectID" HeaderText="SubjectID" ReadOnly="True" SortExpression="SubjectID" />
                    <asp:BoundField DataField="SubjectName" HeaderText="SubjectName" SortExpression="SubjectName" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RainbowSchoolDbConnectionString2 %>" DeleteCommand="DELETE FROM [Subjects] WHERE [SubjectID] = @original_SubjectID AND [SubjectName] = @original_SubjectName" InsertCommand="INSERT INTO [Subjects] ([SubjectID], [SubjectName]) VALUES (@SubjectID, @SubjectName)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:RainbowSchoolDbConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Subjects]" UpdateCommand="UPDATE [Subjects] SET [SubjectName] = @SubjectName WHERE [SubjectID] = @original_SubjectID AND [SubjectName] = @original_SubjectName">
                <DeleteParameters>
                    <asp:Parameter Name="original_SubjectID" Type="Int32" />
                    <asp:Parameter Name="original_SubjectName" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="SubjectID" Type="Int32" />
                    <asp:Parameter Name="SubjectName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="SubjectName" Type="String" />
                    <asp:Parameter Name="original_SubjectID" Type="Int32" />
                    <asp:Parameter Name="original_SubjectName" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    </table>
</h2>
</asp:Content>
