﻿function Alerta(tit, mens, stat) {
    swal({
        title: tit,
        text: mens,
        icon: stat,
        dangerMode: true
    })
}


$(window).on('load', function () {
    $('body').toggleClass('loaded');
    Contar();
    MantenerDiv();

});

$(document).ready(function () {

    var top;
    $(window).scroll(function () {
        top = ($(window).scrollTop() * 0.4) + 'px';
        $('.diagonal .fondo-parallax').css({
            'background-position': '0 ' + top
        });
    });

});

function Contar() {
    $('.count').each(function () {
        $(this).prop('Counter', 0).animate({
            Counter: $(this).text()
        }, {
                duration: 3000,
                easing: 'swing',
                step: function (now) {
                    $(this).text(Math.ceil(now));
                }
            });
    });
}

function Redirect(UrlPath) {
    window.location.hef = UrlPath;
}

function Delete(ctl, event) {
    var defaultAction = $(ctl).prop("href");
    event.preventDefault();
    swal({
        title: "Para evitar errores...",
        text: "¿Estás seguro de querer borrar esto?",
        icon: "warning",
        buttons: true,
        dangerMode: true,
    }).then((willDelete) => {
        if (willDelete) {
            window.location.href = defaultAction;
            return true;
        } else {
            swal({
                title: "Estuvo bien preguntar",
                text: "No se ha eliminado nada",
                icon: "info"
            });
            return false;
        }
    });
}

function VPrevia(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {

            document.getElementById("ContentPlaceHolder1_imagen_vprevia").setAttribute("src", e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
    }
}

function MantenerDiv() {
    var div = document.getElementById("Catalogo");
    var div_position = document.getElementById("div_position");
    var position = parseInt('<%=Request.Form["div_position"] %>');
    if (isNaN(position)) {
        position = 0;
    }
    div.scrollTop = position;
    div.onscroll = function () {
        div_position.value = div.scrollTop;
    };}