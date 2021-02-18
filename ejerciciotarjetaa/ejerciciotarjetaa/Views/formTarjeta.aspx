<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formTarjeta.aspx.cs" Inherits="ejerciciotarjetaa.formTarjeta" %>

<%@ Register src="../UserControl/controlTarjeta.ascx" tagname="controlTarjeta" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:controlTarjeta ID="controlTarjeta1" runat="server" />
        </div>
    </form>
</body>
</html>
