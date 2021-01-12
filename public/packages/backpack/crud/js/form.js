/*
*
* Backpack Crud / Form
*
*/

jQuery(function ($) {
    // Define o dominio
    var url = window.location.host;
    $(".cpf").mask("999.999.999-99");
    $('.placa').mask('SSS-9A99');

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
    $('.peso').mask("#.##0", { reverse: true });
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

    /**
     * Função para calcular.
     * Peso liquido, Quantidade de sacos, valor do frete
     */
    $("#peso_desconto").focusout(function () {
        var pesoBruto = $("#peso_bruto").val(); // Peso Bruto
        var pesoDesconto = $("#peso_desconto").val(); // Peso do Desconto
        //var pesoLiquido = $("#peso_liquido").val();

        var idTalhao = $("#talhao_id").val(); // Id do Talhão
        var idArmazen = $("#armazem_id").val(); // Id do Armazem
        var idMotorista = $("#motorista_id").val(); // Id do Motorista

        var totalPeso = pesoBruto - pesoDesconto; // Total do Peso
        var valorDesconto = pesoDesconto / pesoBruto; // Porcentagem de desconto
        var sacoBruto = (pesoBruto / 60) * 1000; // Quantidade de Sacos Bruto
        var saco_liquido = (totalPeso / 60) * 1000; // Quantidade de Saco Liquido

        $("#peso_liquido").val(totalPeso.toFixed(3));
        $("#desconto").val(valorDesconto.toFixed(3));
        $("#saco_bruto").val(sacoBruto.toFixed(3));
        $("#saco_liquido").val(saco_liquido.toFixed(3));
        axios.get(`http://${url}/admin/lancamentosafra/frete/${idTalhao}/${idArmazen}/${idMotorista}`)
            .then(response => {
                //alert(response.data['locacao']['area_plantada']);
                var valorFrete = sacoBruto * response.data['frete'];
                $("#valor_frete").val(valorFrete.toFixed(2));
                $("#motorista_fornecedor_id").val(response.data['fornecedor']);
                $("#locacao_talhao_id").val(response.data['locacao']['id']);
                $("#variedade_cultura_id").val(response.data['locacao']['variedade_cultura_id']);
                $("#cultura_id").val(response.data['locacao']['cultura_id']);
                $("#colhedor_fornecedor_id").val(1);
                $("#matriz_frete_id").val(1);
                $("#armazen_fornecedor_id").val(1);
                
            })
            .catch(error => {
                console.log(error)
            });
    });




});