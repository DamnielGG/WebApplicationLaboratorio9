<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplicationLaboratorio9._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Web Hosting</h2>
        </div>
        Nombre:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBoxNombre" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <br />
        Apellido:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBoxApellido" runat="server"></asp:TextBox>
        <br />
        Dirección:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBoxDireccion" runat="server"></asp:TextBox>
        <br />
        Nacimiento:&nbsp;&nbsp;&nbsp;
        <asp:Calendar ID="CalendarNacimiento" runat="server"></asp:Calendar>
        <br />
        Edad:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBoxEdad" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        Carné:
        <asp:TextBox ID="TextBoxCarne" runat="server"></asp:TextBox>
        <br />
        Notas:&nbsp;
        <asp:TextBox ID="TextBox7Nota" runat="server"></asp:TextBox>
        <asp:Button ID="Button1Agregarnota" runat="server" OnClick="Button1_Click" Text="Agregar nota" />
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <asp:Button ID="ButtonGuardartodo" runat="server" Height="38px" OnClick="ButtonGuardartodo_Click" Text="Guardar" Width="131px" />
        <br />
    </div>

</asp:Content>
