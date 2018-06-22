<%@ Page Title="Ingreso" Language="C#" MasterPageFile="~/Master Pages/MP_Guest.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="uk-section-small">
        <div id="Cover" runat="server" class="background" style="background-image: url(../img/LoginBG.jpg)"></div>
        <div class="uk-container uk-position-center">
            <div class="uk-card uk-card-default uk-width-large uk-align-center" style="border-radius:15px">
                <div class="uk-card-header">
                    <div class="uk-card-title">
                        <h1 class="uk-text-center uk-heading-line uk-padding-small cLetter uk-margin-remove-bottom">Inicio de sesión</h1>
                    </div>
                </div>
                <div class="uk-card-body">
                    <div class="uk-inline uk-margin-small">
                        <span class="uk-form-icon" uk-icon="icon: user"></span>
                        <asp:TextBox ID="txt_user" CssClass="uk-form-width-large uk-input" placeholder="Nobre de usuario o Correo" runat="server" TextMode="Email"></asp:TextBox>
                    </div>
                    <div class="uk-inline uk-margin-small">
                        <span class="uk-form-icon" uk-icon="icon: lock"></span>
                        <asp:TextBox ID="txt_pass" CssClass="uk-form-width-large uk-input" placeholder="Contraseña" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="uk-card-badge uk-label" style="background:none"><a href="Default.aspx" uk-tooltip="title: Vovler a Inicio"><span uk-icon="icon: home"></span></a></div>
                </div>
                <div class="uk-card-footer">
                    <div class="uk-align-center">
                        <a class="uk-button boton-blue uk-align-center uk-margin-remove-bottom" onserverclick="Evt_Login" runat="server">Ingresar</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

