@extends(backpack_view('blank'))

@section('header')
<div class="container-fluid">
    <div class="row  d-print-none">
        border: 1px red;
        <div class="col rounded">
            <h2>
                <span class="text-capitalize">Operação Agrícola</span>
            </h2>
        </div>
    </div>
</div>
@endsection

@section('content')
<div class="row rounded">
    <div class="col col-md-12 border rounded text-center">FAZENDA SANTA MARTHA</div>
    <div class="col col-md-12 border rounded text-center">PAULO ROBERTO TITOTO</div>
</div>
<div class="row rounded mt-4">
    <div class="col col-md-12 border rounded text-center"><b>ORDEN DE SERVIÇO DE APLICAÇÃO DE DEFENSIVOS AGRÍCOLA SAFRA 20/21</b></div>
    <div class="col col-md-12 border rounded text-center">
        <div class="row">
            <div class="col col-md-2">TALHÃO.:</div>
            <div class="col col-md-2">ÁREA.:</div>
            <div class="col col-md-2">VOLUME BOMBA.:</div>
            <div class="col col-md-2">VAZÃO(LT).:</div>
            <div class="col col-md-2">CAP. BOMBA.:</div>
        </div>
        <div class="row">
            <div class="col col-md-2">OPERÃO.:</div>
            <div class="col col-md-2">BOMBA PRIVISTA.:</div>
            <div class="col col-md-2">BOMBAS REAIS.:</div>
            <div class="col col-md-2">DIFERENÇA(%).:</div>
        </div>
    </div>
</div>
<div class="row mt-4  border rounded">
    <div class="col">
        <div class="row">
            <div class="col">
                <div class="row">
                    <div class="col col-md-6 border rounded text-center"><b>PRODUTOS</b></div>
                    <div class="col col-md-6 border rounded text-center"><b>QTD. DE PRODUTOS POR BOMBA</b></div>
                </div>
            </div>
        </div>
        <div class="row testeTamanho">
            <div class="col">
                <div class="row">
                    <div class="col col-md-6 border-bottom border-right text-center">PRODUTOS</div>
                    <div class="col col-md-6 border-bottom text-center">QTD. DE PRODUTOS POR BOMBA</div>
                </div>
                <div class="row">
                    <div class="col col-md-6 border-bottom border-right text-center">PRODUTOS</div>
                    <div class="col col-md-6 border-bottom text-center">QTD. DE PRODUTOS POR BOMBA</div>
                </div>
                <div class="row">
                    <div class="col col-md-6 border-bottom border-right text-center">PRODUTOS</div>
                    <div class="col col-md-6 border-bottom text-center">QTD. DE PRODUTOS POR BOMBA</div>
                </div>
                <div class="row">
                    <div class="col col-md-6 border-bottom border-right text-center">PRODUTOS</div>
                    <div class="col col-md-6 border-bottom text-center">QTD. DE PRODUTOS POR BOMBA</div>
                </div>
                <div class="row">
                    <div class="col col-md-6 border-bottom border-right text-center">PRODUTOS</div>
                    <div class="col col-md-6 border-bottom text-center">QTD. DE PRODUTOS POR BOMBA</div>
                </div>
                <div class="row">
                    <div class="col col-md-6 border-bottom border-right text-center">PRODUTOS</div>
                    <div class="col col-md-6 border-bottom text-center">QTD. DE PRODUTOS POR BOMBA</div>
                </div>
                <div class="row">
                    <div class="col col-md-6 border-bottom border-right text-center">PRODUTOS</div>
                    <div class="col col-md-6 border-bottom text-center">QTD. DE PRODUTOS POR BOMBA</div>
                </div>
                <div class="row">
                    <div class="col col-md-6 border-bottom border-right text-center">PRODUTOS</div>
                    <div class="col col-md-6 border-bottom text-center">QTD. DE PRODUTOS POR BOMBA</div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col mt-4  border rounded">
        <div class="row">
            <div class="col border rounded text-center">
                <b>CONTROLE DE APLICAÇÃO (1º DIA DE APLICAÇÃO) DATA</b>
            </div>
        </div>
        <div class="row">
            <div class="col col-md-6 border rounded">
                <div class="row">
                    <div class="col">Nº UNIPORT.:</div>
                    <div class="col">FRENTE DE SERVIÇO.:</div>
                </div>
                <div class="row">
                    <div class="col">OPERADOR.:</div>
                </div>
                <div class="row">
                    <div class="col">TALHÃO (ANTERIOR).:</div>
                    <div class="col">RESTO DE CALDAS(LT).:</div>
                </div>
                <div class="row">
                    <div class="col">
                        1 ( ) 2 ( ) 3 ( ) 4 ( ) 5 ( ) 6 ( ) 7 ( ) 8 ( ) 9 ( ) 10 ( ) 11 ( ) 12 ( )
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        RESTO DE CALDA (TALHÃO ATUAL).: ___________________
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        TOTAL DE BOMBAS APLICADAS.: ___________________________
                    </div>
                </div>
            </div>
            <div class="col col-md-6 border rounded">
                <div class="row">
                    <div class="col">Nº UNIPORT.:</div>
                    <div class="col">FRENTE DE SERVIÇO.:</div>
                </div>
                <div class="row">
                    <div class="col">OPERADOR.:</div>
                </div>
                <div class="row">
                    <div class="col">TALHÃO (ANTERIOR).:</div>
                    <div class="col">RESTO DE CALDAS(LT).:</div>
                </div>
                <div class="row">
                    <div class="col">
                        1 ( ) 2 ( ) 3 ( ) 4 ( ) 5 ( ) 6 ( ) 7 ( ) 8 ( ) 9 ( ) 10 ( ) 11 ( ) 12 ( )
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        RESTO DE CALDA (TALHÃO ATUAL).: ___________________
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        TOTAL DE BOMBAS APLICADAS.: ___________________________
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</div>
<div class="row">
    <div class="col mt-4  border rounded">
        <div class="row">
            <div class="col border rounded text-center">
                <b>CONTROLE DE APLICAÇÃO (2º DIA DE APLICAÇÃO) DATA</b>
            </div>
        </div>
        <div class="row">
            <div class="col col-md-6 border rounded">
                <div class="row">
                    <div class="col">Nº UNIPORT.:</div>
                    <div class="col">FRENTE DE SERVIÇO.:</div>
                </div>
                <div class="row">
                    <div class="col">OPERADOR.:</div>
                </div>
                <div class="row">
                    <div class="col">TALHÃO (ANTERIOR).:</div>
                    <div class="col">RESTO DE CALDAS(LT).:</div>
                </div>
                <div class="row">
                    <div class="col">
                        1 ( ) 2 ( ) 3 ( ) 4 ( ) 5 ( ) 6 ( ) 7 ( ) 8 ( ) 9 ( ) 10 ( ) 11 ( ) 12 ( )
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        RESTO DE CALDA (TALHÃO ATUAL).: ___________________
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        TOTAL DE BOMBAS APLICADAS.: ___________________________
                    </div>
                </div>
            </div>
            <div class="col col-md-6 border rounded">
                <div class="row">
                    <div class="col">Nº UNIPORT.:</div>
                    <div class="col">FRENTE DE SERVIÇO.:</div>
                </div>
                <div class="row">
                    <div class="col">OPERADOR.:</div>
                </div>
                <div class="row">
                    <div class="col">TALHÃO (ANTERIOR).:</div>
                    <div class="col">RESTO DE CALDAS(LT).:</div>
                </div>
                <div class="row">
                    <div class="col">
                        1 ( ) 2 ( ) 3 ( ) 4 ( ) 5 ( ) 6 ( ) 7 ( ) 8 ( ) 9 ( ) 10 ( ) 11 ( ) 12 ( )
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        RESTO DE CALDA (TALHÃO ATUAL).: ___________________
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        TOTAL DE BOMBAS APLICADAS.: ___________________________
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</div>
<div class="row">
    <div class="col mt-4  border rounded">
        <div class="row">
            <div class="col border rounded text-center">
                <b>CONTROLE DE APLICAÇÃO (3º DIA DE APLICAÇÃO) DATA</b>
            </div>
        </div>
        <div class="row">
            <div class="col col-md-6 border rounded">
                <div class="row">
                    <div class="col">Nº UNIPORT.:</div>
                    <div class="col">FRENTE DE SERVIÇO.:</div>
                </div>
                <div class="row">
                    <div class="col">OPERADOR.:</div>
                </div>
                <div class="row">
                    <div class="col">TALHÃO (ANTERIOR).:</div>
                    <div class="col">RESTO DE CALDAS(LT).:</div>
                </div>
                <div class="row">
                    <div class="col">
                        1 ( ) 2 ( ) 3 ( ) 4 ( ) 5 ( ) 6 ( ) 7 ( ) 8 ( ) 9 ( ) 10 ( ) 11 ( ) 12 ( )
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        RESTO DE CALDA (TALHÃO ATUAL).: ___________________
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        TOTAL DE BOMBAS APLICADAS.: ___________________________
                    </div>
                </div>
            </div>
            <div class="col col-md-6 border rounded">
                <div class="row">
                    <div class="col">Nº UNIPORT.:</div>
                    <div class="col">FRENTE DE SERVIÇO.:</div>
                </div>
                <div class="row">
                    <div class="col">OPERADOR.:</div>
                </div>
                <div class="row">
                    <div class="col">TALHÃO (ANTERIOR).:</div>
                    <div class="col">RESTO DE CALDAS(LT).:</div>
                </div>
                <div class="row">
                    <div class="col">
                        1 ( ) 2 ( ) 3 ( ) 4 ( ) 5 ( ) 6 ( ) 7 ( ) 8 ( ) 9 ( ) 10 ( ) 11 ( ) 12 ( )
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        RESTO DE CALDA (TALHÃO ATUAL).: ___________________
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        TOTAL DE BOMBAS APLICADAS.: ___________________________
                    </div>
                </div>
            </div>
        </div>
    </div>    
</div>

<div class="row mt-5">
    <div class="col">TOTAL GERAL DE BOMBAS REIAS APLICADAS</div>
</div>
@endsection

@section('after_styles')
<link rel="stylesheet" href="{{ asset('css/style.css') }}">
@endsection