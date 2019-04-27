<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KullaniciKart.aspx.cs" Inherits="KullanıcıKayitFormu.KullaniciKart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kullanıcı Kart</title>
    <style type="text/css">
        .auto-style1 {
            width: 98%;
            height: 232px;
        }
        .auto-style2 {
            height: 38px;
        }
        .auto-style3 {
            height: 31px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="pnl_kullanici" runat="server" GroupingText="Kullanıcı Kart" Height="369px" Width="422px">
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Adınız Soyadınız:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_ad" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_ad" ErrorMessage="*" Font-Bold="True" Font-Size="X-Small" ForeColor="Maroon"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label3" runat="server" Text="Adresiniz:"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:TextBox ID="txt_adres" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style3">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_adres" ErrorMessage="*" Font-Bold="True" Font-Size="X-Small" ForeColor="Maroon"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Meslek :"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddl_meslek" runat="server">
                                <asp:ListItem Value="1">Mühendis</asp:ListItem>
                                <asp:ListItem Value="2">Doktor</asp:ListItem>
                                <asp:ListItem Value="3">Çiftçi</asp:ListItem>
                                <asp:ListItem Value="4">İşçi</asp:ListItem>
                                <asp:ListItem Value="5">Dişçi</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="Kullanıcı Adınız:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_kullanici" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_kullanici" ErrorMessage="*" Font-Bold="True" Font-Size="X-Small" ForeColor="Maroon"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Şifreniz :"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_sifre" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        <td rowspan="2">
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_sifre" ControlToValidate="txt_sifre2" ErrorMessage="İki Şifre Aynı Olmalı" Font-Size="X-Small" ForeColor="Maroon"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text="Tekrar Şirfeniz :"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_sifre2" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2"></td>
                        <td class="auto-style2" style="text-align: right">
                            <asp:Button ID="btn_kaydet" runat="server" Text="Kaydet" OnClick="btn_kaydet_Click" />
                        </td>
                        <td class="auto-style2"></td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <br />
                <br />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
