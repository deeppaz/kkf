<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KullaniciListesi.aspx.cs" Inherits="KullanıcıKayitFormu.KullaniciListesi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lbl_session" runat="server"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="grd_kullanici" runat="server" OnSelectedIndexChanged="grd_kullanici_SelectedIndexChanged">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
