<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/MP_Guest.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="uk-section uk-padding" style="background-color: #8bea8b">
        <h1 class="uk-light cLetter"><b>Catalogo de Smartphones</b></h1>
    </div>

    <div class="uk-section seccion-diagonal" style="background-color: #ffffff">
        <div class="fondo-diagonal" style="background-color: #8bea8b;"></div>
    </div>
    <div class="uk-section uk-padding uk-text-center">
        <h1 class="cLetter">Bienvenido</h1>

        <div class="uk-container uk-align-center">
            <a class="boton-kuki uk-button">Boton de Prueba 1</a>
        </div>
        <div class="uk-container uk-align-center">
            <a class="boton-ver uk-button">Boton de Prueba 2</a>
        </div>
    </div>
    <div class="uk-section-small"></div>
<div class="diagonal uk-height-large">
  <span class="fondo-parallax" style="background-image:url(../img/BG1.jpg)"></span>
</div>

    <div class="uk-section-small"></div>

    <div id="Catalogo" class="uk-section">
        <div class="uk-container">
            <h1 class="cLetter uk-text-center uk-padding-small">Catalogo de Equipos</h1>
            <div class="uk-padding uk-flex-center" uk-grid>
                <asp:TextBox CssClass="uk-input uk-form-width-large" ID="TextBox1" runat="server"></asp:TextBox>
                <a class="boton-kuki uk-button uk-width-small">Buscar</a>
            </div>
            <div class="uk-child-width-1-3@m uk-child-width-1-1@s uk-grid-match" uk-grid>
                <div>
                    <div class="uk-card uk-card-default uk-grid-collapse uk-child-width-1-2@s uk-margin uk-box-shadow-hover-large" uk-grid>
                        <div class="uk-card-media-left uk-cover-container">
                            <img src="../img/models/lg k10.jpg" alt="" uk-cover>
                            <canvas width="600" height="400"></canvas>
                        </div>
                        <div>
                            <div class="uk-card-body">
                                <h3 class="uk-card-title">K10</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
                                <a class=" boton-ver uk-button">VER</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="uk-card uk-card-default uk-grid-collapse uk-child-width-1-2@s uk-margin" uk-grid>
                        <div class="uk-card-media-left uk-cover-container">
                            <img src="../img/models/lg k10.jpg" alt="" uk-cover>
                        </div>
                        <div>
                            <div class="uk-card-body">
                                <h3 class="uk-card-title">Media Left</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="uk-card uk-card-default uk-grid-collapse uk-child-width-1-2@s uk-margin" uk-grid>
                        <div class="uk-card-media-left uk-cover-container">
                            <img src="../img/models/lg k10.jpg" alt="" uk-cover>
                        </div>
                        <div>
                            <div class="uk-card-body">
                                <h3 class="uk-card-title">Media Left</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

