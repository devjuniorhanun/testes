/*
*
* Backpack Crud / Form
*
*/

jQuery(function ($) {
    // Define o dominio
    var url = window.location.host;

    'use strict';
    $(".cpfcnpj").keydown(function () {
        try {
            $(".cpfcnpj").unmask();
        } catch (e) { }

        var tamanho = $(".cpfcnpj").val().length;

        if (tamanho < 11) {
            $(".cpfcnpj").mask("999.999.999-99");
        } else {
            $(".cpfcnpj").mask("99.999.999/9999-99");
        }

        // ajustando foco
        var elem = this;
        setTimeout(function () {
            // mudo a posição do seletor
            elem.selectionStart = elem.selectionEnd = 10000;
        }, 0);
        // reaplico o valor para mudar o foco
        var currentValue = $(this).val();
        $(this).val('');
        $(this).val(currentValue);
    });
    $('.telefone').mask('(00) 0000-0000');
    $('.celular').mask('(00) 00000-0000');
    $('.areas').mask("#.##0,00", { reverse: true });
    $('.inscricao').mask('00.000.000-0');
    $('.valores').mask("#.##0,00", { reverse: true });
    $('.volume').mask("#.##0,000", { reverse: true });
    $('.desabilitado').attr("readonly", true);
    // Calcula a Quantidade de bombas por aplicação
    $("#vazao").focusout(function () {
        var volumeBomba = $("#volume_bomba").val();
        var vazao = $("#vazao").val();
        var idTalhao = $("#talhao_id").val();
        //alert(idTalhao)
        var capacidadeBomba;
        volumeBomba = volumeBomba.replace(".", "")
        volumeBomba = volumeBomba.replace(",", ".")
        vazao = vazao.replace(".", "")
        vazao = vazao.replace(",", ".")
        capacidadeBomba = parseFloat(parseFloat(volumeBomba) / parseFloat(vazao))
        $("#capacidade_bomba").val(capacidadeBomba.toFixed(3));
        axios.get(`http://${url}/admin/servicoagricola/areaTalhao/${idTalhao}`)
            .then(response => {
                var areaTalhao = response.data;
                var quantBomba = areaTalhao / capacidadeBomba
                $("#bomba_recomendada").val(quantBomba.toFixed(3));
                $("#area").val(areaTalhao);
            })
            .catch(error => {
                console.log(error)
            });
    });

});