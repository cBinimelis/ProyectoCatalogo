<%@ Page Title="Catálogo Jumbo" Language="C#" MasterPageFile="~/Master Pages/MP_Guest.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
        <span class="fondo-parallax" style="background-image: url(../img/BG1.jpg)"></span>
    </div>

    <div class="uk-section-small"></div>

    <div id="Catalogo" class="uk-section">
        <div class="uk-container">
            <h1 class="cLetter uk-text-center uk-padding-small">Catalogo de Equipos</h1>
            <div class="uk-padding uk-flex-center" uk-grid>
                <asp:TextBox CssClass="uk-input uk-form-width-large" ID="TextBox1" runat="server"></asp:TextBox>
                <a class="boton-kuki uk-button uk-width-small">Buscar</a>
            </div>

            <%--BASE DE DISEÑO PARA CATALOGO--%>
            <div class="uk-child-width-1-3@m uk-child-width-1-1@s uk-grid-match" uk-grid>
                <div>
                    <div class="uk-card uk-card-default uk-grid-collapse uk-child-width-1-2@s uk-margin uk-box-shadow-hover-large" uk-grid>
                        <div class="uk-card-media-left uk-cover-container">
                            <img src="../img/models/k10.jpg" alt="" uk-cover>
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
                            <img src="../img/models/k10.jpg" alt="" uk-cover>
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
                            <img src="../img/models/k10.jpg" alt="" uk-cover>
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

            <%--            <div class="uk-child-width-1-3@m uk-child-width-1-1@s uk-grid-match" uk-grid>
                <asp:Repeater ID="rpt_Smartphones" runat="server" OnItemCommand="rpt_Smartphones_ItemCommand">
                    <ItemTemplate>
                        <div>
                            <div class="uk-card uk-card-default uk-grid-collapse uk-child-width-1-2@s uk-margin uk-box-shadow-hover-large" uk-grid>
                                <div class="uk-card-media-left uk-cover-container">
                                    <img src='../img/models/<%#Eval("Imagen")%>' alt="" uk-cover>
                                    <canvas width="600" height="400"></canvas>
                                </div>
                                <div>
                                    <div class="uk-card-body">
                                        <h3 class="uk-card-title"><%#Eval("Nombre")%></h3>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
                                        <asp:Button ID="btn_ver" CssClass="boton-ver uk-button" runat="server" Text="Ver" CommandName="Select" CommandArgument='<%# Eval("id_Smartphone") %>' />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>--%>

            <asp:ListView ID="PhoneList" DataKeyNames="id_Smartphone" runat="server" GroupPlaceholderID="GroupPH"
                ItemPlaceholderID="ItemPH" OnPagePropertiesChanging="PhoneList_PagePropertiesChanging">
                <LayoutTemplate>
                    <asp:PlaceHolder runat="server" ID="GroupPH">
                    </asp:PlaceHolder>
                    <asp:DataPager ID="DataPager1" runat="server" PagedControlID="PhoneList" PageSize="9">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="false" ShowPreviousPageButton="true"
                                ShowNextPageButton="false" />
                            <asp:NumericPagerField ButtonType="Link" />
                            <asp:NextPreviousPagerField ButtonType="Link" ShowNextPageButton="true" ShowLastPageButton="false" ShowPreviousPageButton="false" />
                        </Fields>
                    </asp:DataPager>
                </LayoutTemplate>
                <GroupTemplate>
                    <asp:PlaceHolder runat="server" ID="ItemPH">
                        <div class="uk-child-width-1-3@m uk-child-width-1-1@s uk-grid-match" uk-grid>

                        </div>
                    </asp:PlaceHolder>
                </GroupTemplate>
                <ItemTemplate>
                    <div>
                        <div class="uk-card uk-card-default uk-grid-collapse uk-child-width-1-2@s uk-margin uk-box-shadow-hover-large" uk-grid>
                            <div class="uk-card-media-left uk-cover-container">
                                <img src='../img/models/<%#Eval("Imagen")%>' alt="" uk-cover>
                                <canvas width="600" height="400"></canvas>
                            </div>
                            <div>
                                <div class="uk-card-body">
                                    <h3 class="uk-card-title"><%#Eval("Nombre")%></h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
                                    <asp:Button ID="btn_ver" CssClass="boton-ver uk-button" runat="server" Text="Ver" CommandName="Select" CommandArgument='<%# Eval("id_Smartphone") %>' />
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:ListView>

            <%--LOADER--%>
            <div id="load" class="uk-section-small">
                <div class="sk-folding-cube">
                    <div class="sk-cube1 sk-cube"></div>
                    <div class="sk-cube2 sk-cube"></div>
                    <div class="sk-cube4 sk-cube"></div>
                    <div class="sk-cube3 sk-cube"></div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

