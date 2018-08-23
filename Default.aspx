<%@ Page Title="Catálogo Jumbo" Language="C#" MasterPageFile="~/Master Pages/MP_Guest.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="uk-section uk-padding" style="background-color: #8bea8b">
    </div>
    <div class="uk-section seccion-diagonal" style="background-color: #ffffff">
        <div class="fondo-diagonal" style="background-color: #8bea8b;"></div>
    </div>
    <div id="Catalogo" class="uk-section">
        <h1 class="cLetter uk-text-center"><b>Catalogo de Smartphones</b></h1>
        <div class="uk-container">
            <div class="uk-padding uk-flex-center" uk-grid>
                <asp:TextBox CssClass="uk-input uk-form-width-large" placeholder="Ingrese un equipo o marca a buscar..." autocomplete="off" ID="TextBox1" runat="server"></asp:TextBox>
                <a class="boton-kuki uk-button uk-width-small">Buscar</a>
            </div>

            <div class="uk-flex-center" uk-grid>
                <asp:ListView ID="PhoneList" DataKeyNames="id_Smartphone" runat="server" GroupPlaceholderID="GroupPH"
                    ItemPlaceholderID="ItemPH" OnPagePropertiesChanging="PhoneList_PagePropertiesChanging" OnItemCommand="PhoneList_ItemCommand">
                    <LayoutTemplate>
                        <asp:PlaceHolder runat="server" ID="GroupPH"></asp:PlaceHolder>
                        <div class="uk-flex-center">
                            <asp:DataPager ID="DataPager1" runat="server" PagedControlID="PhoneList" PageSize="9">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="false" ShowPreviousPageButton="true" ButtonCssClass="uk-link-reset"
                                        ShowNextPageButton="false" PreviousPageText="<span uk-icon='icon: chevron-left'></span>" />
                                    <asp:NumericPagerField ButtonType="Link" NumericButtonCssClass="uk-icon-button uk-link-reset" />
                                    <asp:NextPreviousPagerField ButtonType="Link" ShowNextPageButton="true" ShowLastPageButton="false" ShowPreviousPageButton="false"
                                        ButtonCssClass="uk-link-reset" NextPageText="<span uk-icon='icon: chevron-right'></span>" />
                                </Fields>
                            </asp:DataPager>
                        </div>
                    </LayoutTemplate>
                    <GroupTemplate>
                        <asp:PlaceHolder runat="server" ID="ItemPH"></asp:PlaceHolder>
                    </GroupTemplate>
                    <ItemTemplate>
                        <div class="uk-width-1-3@m uk-width-1-1@s uk-grid-match">
                            <div class=" uk-height-large">
                                <div class="uk-card uk-card-default uk-grid-collapse uk-child-width-1-2@s uk-margin uk-box-shadow-hover-large" uk-grid>
                                    <div class="uk-card-media-left uk-cover-container">
                                        <img src='../img/models/<%#Eval("Imagen")%>' alt="" uk-cover>
                                        <canvas width="600" height="400"></canvas>
                                    </div>
                                    <div>
                                        <div class="uk-card-body">
                                            <h3 class="uk-card-title uk-text-truncate"><%#Eval("Nombre")%></h3>
                                            <p><%#Eval("Fabricante")%></p>
                                            <asp:Button ID="btn_ver" CssClass="boton-ver uk-button" runat="server" Text="Ver" CommandName="Select" CommandArgument='<%# Eval("id_Smartphone") %>' />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
            </div>


            <input type="hidden" id="div_position" name="div_position" />

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

    <div class="diagonal uk-height-large">
        <span uk-parallax="bgy: 200" class="uk-height-large uk-background-cover uk-light uk-flex" style="background-image: url(../img/BG1.jpg)"></span>
    </div>

    <div class="uk-section-small"></div>

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


</asp:Content>

