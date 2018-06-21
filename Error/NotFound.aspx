<%@ Page Title="Error 404!" Language="C#" MasterPageFile="~/Master Pages/MP_Guest.master" AutoEventWireup="true" CodeFile="NotFound.aspx.cs" Inherits="Error_NotFound" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="uk-section-default">
        <div id="Cover" runat="server" class="background" style="background-image: url(../img/404BG.jpg)"></div>
        <div class="uk-container uk-card uk-card-default uk-align-center uk-animation-slide-left">
            <div class="uk-card-body uk-card-medium">
            <div class="uk-card-title">
                <h1 class="uk-text-center uk-heading-line uk-padding-small">ERROR 404</h1>
            </div>
                <img id="imagen" class="uk-align-center uk-height-medium@m uk-margin-remove-adjacent" runat="server" src="../img/404BG.jpg" alt="Imagen del Serie" />
                <div class="uk-text-center uk-article">
                    <h1 class="uk-article-title">No se ha encontado la página solicitada</h1>
                    <h4>No pasa nada, está todo bajo control <span uk-icon="icon: happy"></span></h4>
                    <p>Volver a <b><a class="uk-link-reset" href="../Default.aspx">Inicio</a></b></p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

