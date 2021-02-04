<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="MonApp.Formulaire" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <br />
            <asp:ListBox ID="lstLocation" runat="server">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Mumbai</asp:ListItem>
                <asp:ListItem>Bangalore</asp:ListItem>
                <asp:ListItem>Hydrebad</asp:ListItem>
            </asp:ListBox>
            <br />
        </div>
        <asp:RadioButton ID="rdMale" runat="server" Text="Male" />
        <br />
        <asp:RadioButton ID="rdFemale" runat="server" Text="Female" />
        <br />
        <br />
        <asp:CheckBox ID="chkC" runat="server" Text="C#" />
        <br />
        <asp:CheckBox ID="chkASP" runat="server" Text="ASP.Net" />
        <br />
        <br />
        <br />
        <asp:Button ID="Submit" runat="server" OnClick="Button1_Click" Text="Submit" />
    </form>
</body>
</html>
