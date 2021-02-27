@extends(backpack_view('blank'))

@section('header')
<div class="container-fluid">
  <h2>
    <span class="text-capitalize">Relátorio de Safra</span>
  </h2>
</div>
@endsection

@section('content')
<div class="card">
  <div class="card-header">

    <div class="row">
      <div class="col-md-2">
        <strong>Total Colhido.: <br>{{ number_format($totalColhido->liquido, 0, ',', '.') }} Kg</strong>
      </div>
      <div class="col-md-2">
        <strong>Sacos Colhido.: <br>{{ number_format($totalColhido->sacos, 0, ',', '.') }} Sc</strong>
      </div>

      <div class="col-md-2">
        <strong>Frete Pago.: <br>R$ {{ number_format($totalColhido->frete, 2, ',', '.') }}</strong>
      </div>

    </div>
    <div class="row no-print">
      <div class="col">
        {{-- Abre o formulário --}}
        {!! Form::model($date,['route' => 'relatorio_safra']) !!}
        {{-- Chama os campos do formulário --}}
        @include('admin.lacamento_lavoura.form_filtros')
        {{-- Fecha o formulário --}}
        {!! Form::close() !!}
      </div>
    </div>
  </div>
  <div class="card-body">
    <table class="table table-striped table-hover table-sm">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Data</th>
          <th scope="col">Motorista</th>
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
        @forelse ($listagem as $lista)
        <tr>
          <th scope="row">{{ $lista->id }}</th>
          <td>{{ Carbon\Carbon::parse($lista->data_colhido)->format('d/m/Y') }}</td>
          <td>{{ $lista->motorista }}</td>
          <td>{{ $lista->talhao }}</td>
          <td>{{ $lista->num_romaneio }}</td>
          <td>{{ $lista->num_controle }}</td>
          <td>{{ number_format($lista->peso_bruto, 0, ',', '.') }} kg</td>
          <td>{{ number_format($lista->peso_desconto, 0, ',', '.') }} Kg</td>
          <td>{{ number_format($lista->peso_liquido, 0, ',', '.') }} Kg</td>
          <td>{{ $lista->nomeArmazen }}</td>
          <td>{{ $lista->nomeColhedor }}</td>
          <td>R$ {{ number_format($lista->matrizFrete, 2, ',', '.') }}</td>
          <td>R$ {{ number_format($lista->valor_frete, 2, ',', '.') }}</td>

        </tr>
        @empty
        <p>Não foi encontrado Nem um Registro</p>
        @endforelse

      </tbody>
      <tfoot>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Data</th>
          <th scope="col">Motorista</th>
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
      </tfoot>
    </table>
  </div>
  <div class="card-footer text-muted">

  </div>
</div>
@stop
@section('after_styles')
<link rel="stylesheet" href="{{ asset('css/print.css') }}">
@endsection