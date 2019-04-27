<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="KullanıcıKayitFormu._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ana Sayfa</title>
    <style type="text/css">
        .auto-style1 {
            width: 32%;
        }
        .auto-style2 {
            width: 199px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ImageButton ID="imgbtn_kullanici" runat="server" CausesValidation="False" Height="36px" ImageUrl="~/images/kullanici.jpg" OnClick="imgbtn_kullanici_Click" ToolTip="Kullanı Kartı Oluşturma" Width="45px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbl_mesaj" runat="server" Visible="False"></asp:Label>
            <asp:LinkButton ID="lbl_link" runat="server" CausesValidation="False" OnClick="lbl_link_Click" Visible="False">Yeni Kullanıcı Oluştur</asp:LinkButton>
            <br />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Kullanıcı Adı"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txt_username" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_username" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Şifre"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txt_password" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_password" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2" style="text-align: right">
                        <asp:Button ID="btn_login" runat="server" OnClick="btn_login_Click" Text="Login" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
        </div>
    </form>
</body>
</html>
