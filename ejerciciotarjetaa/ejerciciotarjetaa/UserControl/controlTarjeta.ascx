<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="controlTarjeta.ascx.cs" Inherits="ejerciciotarjetaa.controlTarjeta" %>

<style>
    .textos {
        font-family: Arial;
        font-size: 14px;
    }
    .boton {
        background-color: cadetblue;
        font-size:small;
        border: 1px;
        border-radius: 40px;
        color:white;
    }
    .contenedor {
        border-style: solid;
        border-width: 1px;
        width: 369px;
        margin: 0 auto;
        background-color: aliceblue;
        border-color: cadetblue;
        border-radius: 20px;
        padding: 7px;
    }
    .box {
        border: 1px solid;
        border-radius: 5px;
        border-color: cadetblue;
    }
  
</style>
<br />
<br />
<br />
<br />
<div class="contenedor">

    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" CssClass="textos" runat="server" Text="NÚMERO DE TARJETA"></asp:Label>
    &nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtNumTar"  CssClass="box" runat="server" Width="230px" Height="25px"></asp:TextBox>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2"  CssClass="textos" runat="server" Text="CADUCIDAD"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" CssClass="textos" runat="server" Text="CVC"></asp:Label>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtmes" placeholder="Mes" CssClass="box" runat="server" Width="47px" Height="25px"></asp:TextBox>
    &nbsp;<asp:TextBox ID="txtanio" placeholder="Año" CssClass="box" runat="server" Width="47px" Height="25px"></asp:TextBox>
    <asp:TextBox ID="txtcvc" CssClass="box" runat="server" style="margin-left: 48px" Width="61px" Height="25px"></asp:TextBox>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" CssClass="boton" runat="server" Height="35px" Text="VERIFICAR" Width="230px" OnClick="Button1_Click" />
</div>

<div style="width: 390px; margin: 0 auto;">
    <p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
    &nbsp;
    <asp:Label ID="lblValido"  runat="server"></asp:Label>
    </p>
    &nbsp;
    <asp:Label ID="lblMarca" runat="server"></asp:Label>
    <br />
    <br />
    &nbsp;
    <asp:Label ID="lblVencida" runat="server"></asp:Label>
</div>
