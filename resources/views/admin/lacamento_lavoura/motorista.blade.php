@extends(backpack_view('blank'))

@section('header')
<div class="container-fluid">
    <h2>
        <span class="text-capitalize">Relátorio de Transportador</span>
    </h2>
</div>
@endsection

@section('content')

<div class="card">
    <div class="card-header">
        <div class="row no-print">
            <div class="col">
                {{-- Abre o formulário --}}
                {!! Form::open(['route' => 'relatorio_motorista']) !!}
                {{-- Chama os campos do formulário --}}
                @include('admin.lacamento_lavoura.form_filtros_motorista')
                {{-- Fecha o formulário --}}
                {!! Form::close() !!}
            </div>
        </div>
    </div>

    <div class="card-body">
        @forelse ($registros as $listas)
        @php $i = 0; @endphp
        <table class="table table-striped table-hover table-sm table-bordered">
            @foreach ($listas as $lista)
            @if($i == 0)
            @php $i++; @endphp
            <thead>
                <tr>
                    <th scope="col" colspan="11">{{$lista->motorista->nome}}</th>
                </tr>
                <tr>
                    <th scope="col">Data</th>
                    <th scope="col">Talhão</th>
                    <th scope="col">Romaneio</th>
                    <th scope="col">Controle</th>
                    <th scope="col">Peso Bruto</th>
                    <th scope="col">Desconto</th>
                    <th scope="col">Peso Líquido</th>
                    <th scope="col">Armazén</th>
                    <th scope="col">Colhedor</th>
                    <th scope="col">Frete</th>
                    <th scope="col">Valor Frete</th>
                </tr>
            </thead>
            <tbody>
            @endif

            @if($i > 0) 
            <tr>
                    <th scope="col">{{ Carbon\Carbon::parse($lista->data_colhido)->format('d/m/Y') }}</th>
                    <th scope="col">{{$lista->talhao->nome}}</th>
                    <th scope="col">{{$lista->num_romaneio}}</th>
                    <th scope="col">{{$lista->num_controle}}</th>
                    <th scope="col">{{number_format($lista->peso_bruto, 0, '.', '.')}} Kg</th>
                    <th scope="col">{{number_format($lista->peso_desconto, 0, '.', '.')}} Kg</th>
                    <th scope="col">{{number_format($lista->peso_liquido, 0, '.', '.')}} Kg</th>
                    <th scope="col">{{$lista->armazem->nome}}</th>
                    <th scope="col">{{$lista->colhedor->nome}}</th>
                    <th scope="col">R$ {{number_format($lista->matrizFrete->frete, 2, ',', '.')}}</th>
                    <th scope="col">R$ {{number_format($lista->valor_frete, 2, ',', '.')}}</th>
                </tr>



            @endif
            </tbody>

            @endforeach
        </table>

        @empty
        <p>Não foi encontrado Nem um Registro</p>

        @endforelse
    </div>
</div>

@endsection
@section('after_styles')
<link rel="stylesheet" href="{{ asset('css/print.css') }}">
@endsection