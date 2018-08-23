<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/MP_Guest.master" AutoEventWireup="true" CodeFile="DetallesSmartphone.aspx.cs" Inherits="DetallesSmartphone" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        $(window).on('load', function () {

        });
    </script>
    <div class="uk-section-small"></div>
    <div class="uk-section seccion-diagonal" style="background-color: #ffffff">
        <div class="fondo-diagonal" style="background-color: #8bea8b;"></div>
    </div>
    <div class="uk-section text uk-padding-remove-top">
        <div class="uk-container">
            <div class="uk-card uk-card-body">
                <h1 class="uk-text-center uk-heading-line uk-padding-small">
                    <asp:Label ID="TituloJ" runat="server" Text="Waifu-Movil para rellenar"></asp:Label></h1>
                <div class="uk-child-width-1-2" uk-grid>
                    <div>
                        <img src="img/DefaultPhone.jpg" />
                    </div>
                    <div class="uk-padding-small uk-align-middle">
                        <p>
                            <b>Fabricante: </b>
                            <asp:Label ID="lbl_fabricante" runat="server" Text="IBM"></asp:Label>
                        </p>
                        <p>
                            <b>Procesador: </b>
                            <asp:Label ID="Label1" runat="server" Text="Medio Nucleo 1.4Mhz"></asp:Label>
                        </p>
                        <p>
                            <b>Cámara: </b>
                            <asp:Label ID="Label2" runat="server" Text="VGA"></asp:Label>
                        </p>
                        <p>
                            <b>Pantalla: </b>
                            <asp:Label ID="Label3" runat="server" Text="Bonita"></asp:Label>
                        </p>
                        <p>
                            <b>Memoria RAM: </b>
                            <asp:Label ID="Label4" runat="server" Text="1 Chilion"></asp:Label>
                        </p>
                        <p>
                            <b>Almacenamiento: </b>
                            <asp:Label ID="Label5" runat="server" Text="La respuesta está en tu corazón"></asp:Label>
                        </p>
                        <p>
                            <b>Sistema Operativo: </b>
                            <asp:Label ID="Label6" runat="server" Text="Java"></asp:Label>
                        </p>
                        <p>
                            <b>Batería: </b>
                            <asp:Label ID="Label7" runat="server" Text="Dura todo el día"></asp:Label>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="diagonal uk-height-large">
        <span uk-parallax="bgy: 200" class="uk-height-large uk-background-cover uk-light uk-flex" style="background-image: url(../img/DefaultPhoneBG.jpg)"></span>
    </div>

    <div class="uk-section-small"></div>

</asp:Content>

