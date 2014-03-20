<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2.WebForm1" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Konvertera temperaturer</title>
    <link href="~/Content/css.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="div" class="div">
            <asp:Label ID="Title" runat="server" CssClass="title" Text="Konvertera temperaturer"></asp:Label><br /><br />
            <asp:ValidationSummary ID="ValidationSummary" runat="server" CssClass="red" ShowSummary="True" HeaderText="Fel inträffade. Åtgärda felen och försök igen." ShowMessageBox="False" />
            
            <asp:TextBox ID="Start" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="StartValidator" runat="server" CssClass="red" ErrorMessage="Fyll i en starttemperatur." ControlToValidate="Start" Text="*"></asp:RequiredFieldValidator><br />
            
            <asp:TextBox ID="Slut" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="SlutValidator" runat="server" CssClass="red" ErrorMessage="Fyll i en sluttemperatur." ControlToValidate="Slut" Text="*"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompStartSlut" runat="server" CssClass="red" ErrorMessage="Sluttemperaturen måste vara högre än starttemperaturen!" Text="*" ControlToCompare="Start" ControlToValidate="Slut" Operator="GreaterThan" Type="Integer"></asp:CompareValidator><br />
            
            <asp:TextBox ID="Steg" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="StegValidator" runat="server" CssClass="red" ErrorMessage="Fyll i ett temperatursteg." ControlToValidate="Steg" Text="*"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompSlutSteg" runat="server" CssClass="red" ErrorMessage="Temperatursteget kan inte vara större än sluttemperaturen!" ControlToCompare="Slut" ControlToValidate="Steg" Operator="LessThanEqual" Text="*" Type="Integer"></asp:CompareValidator><br />

            <br />
            <asp:Label ID="Typ" runat="server" Text="Typ av konvertering"></asp:Label><br />
            <asp:RadioButton ID="CtoF" runat="server" GroupName="radio" Text="Celsius till Fahrenheit"  Checked="True" /><br />
            <asp:RadioButton ID="FtoC" runat="server" GroupName="radio" Text="Fahrenheit till Celsius" />
            <asp:Button ID="Skicka" runat="server" Text="Konvertera" OnClick="Skicka_Click" /><br />
        </div>
        <div id="result">
            <asp:Table ID="Table" runat="server" Visible="false">
            </asp:Table>
        </div>
    </form>
</body>
</html>
