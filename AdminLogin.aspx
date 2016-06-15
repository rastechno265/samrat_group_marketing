<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Samrat Group Marketing</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" style="margin-top:150px">
    <table style="border-style: solid; border-width: thin; width:41%; vertical-align:middle;text-align:center; clip: rect(100px, auto, auto, auto); height: 216px;">
        <tr>
            <td colspan="3" align="center" bgcolor="#26478C" 
                
                style="border-width: thin; font-family: verdana; font-size: large; font-weight: bold; border-bottom-style: solid; color: #FFFFFF;">
                Admin Login
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" style="font-family: verdana; font-size: medium" 
                valign="middle">
                User Name</td>
            <td align="center" style="font-family: verdana; font-size: medium" 
                valign="middle">
                :</td>
            <td align="left" style="font-family: verdana; font-size: medium" 
                valign="middle">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7" align="right" 
                style="font-family: verdana; font-size: medium" valign="middle">
                Password</td>
            <td class="style7" align="center" 
                style="font-family: verdana; font-size: medium" valign="middle">
                :</td>
            <td class="style1" align="left" style="font-family: verdana; font-size: medium" 
                valign="middle">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center" class="style8" valign="middle">
                <asp:Button ID="btn_login" runat="server" Text="Login" 
                    onclick="btn_login_Click" Height="30px" Width="65px" 
                    CausesValidation="False" Font-Bold="True" />
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>



