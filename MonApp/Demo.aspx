<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="WebFormTuto.Demo" Trace="True"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:Label ID="Label3" runat="server" Text="Id"></asp:Label>
            <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
            <br />
            
            <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <br />
            
            <br />
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Display" />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update" style="height: 26px" />
            <br />
            <asp:Button ID="Button3" runat="server" Text="Delete" OnClick="Button3_Click" />
            <br />
            <br />
            <br />
            
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="TutorialID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="TutorialID" HeaderText="TutorialID" ReadOnly="True" SortExpression="TutorialID" />
                    <asp:BoundField DataField="TutorialName" HeaderText="TutorialName" SortExpression="TutorialName" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:asplilyConnectionString %>" DeleteCommand="DELETE FROM [demotbb] WHERE [TutorialID] = @TutorialID" InsertCommand="INSERT INTO [demotbb] ([TutorialID], [TutorialName]) VALUES (@TutorialID, @TutorialName)" SelectCommand="SELECT * FROM [demotbb]" UpdateCommand="UPDATE [demotbb] SET [TutorialName] = @TutorialName WHERE [TutorialID] = @TutorialID">
                <DeleteParameters>
                    <asp:Parameter Name="TutorialID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TutorialID" Type="String" />
                    <asp:Parameter Name="TutorialName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TutorialName" Type="String" />
                    <asp:Parameter Name="TutorialID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>