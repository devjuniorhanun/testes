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
    <table class="table table-striped table-hover table-sm">
      <thead>
        <tr>
          <th scope="col">Qtn Viagem</th>
          <th scope="col">Transportador</th>
          <th scope="col">Peso Bruto</th>
          <th scope="col">Valor Frete</th>
          <th scope="col">Adiantamentos</th>
          <th scope="col">Saldo</th>
        </tr>
      </thead>
      <tbody>
        @php
          $qntViagem = 0;
          $qntSaco = 0;
          $qntFrete = 0;
          $qntAdiantamento = 0;
        @endphp

        @forelse ($listaTransportador as $lista)
        @php
          $qntViagem += $lista->qtnViagem;
          $qntSaco += $lista->QtnSacoBrutos;
          $qntFrete += $lista->valorFrete;
          $qntAdiantamento += $lista->valorAdiantamento;
        @endphp
        <tr>
          <th scope="row">{{ $lista->qtnViagem }}</th>
          <td>{{ $lista->nome_fantasia }}</td>
          <td>{{ number_format($lista->QtnSacoBrutos, 3, ',', '.') }} Sc</td>
          <td>R$ {{ number_format($lista->valorFrete, 2, ',', '.') }}</td>
          <td>R$ {{ ($lista->valorAdiantamento)? number_format($lista->valorAdiantamento, 2, ',', '.') : "0"}}</td>
          <td>R$ {{ ($lista->valorAdiantamento <> -0.01)? number_format(($lista->valorFrete - $lista->valorAdiantamento), 2, ',', '.') : 0}}</td>
        </tr>
        @empty
        <p>Não foi encontrado Nem um Registro</p>
        @endforelse

      </tbody>
      <tfoot>
        <tr>
          <th scope="col">Qtn Viagem</th>
          <th scope="col">Transportador</th>
          <th scope="col">Peso Bruto</th>
          <th scope="col">Valor Frete</th>
          <th scope="col">Adiantamentos</th>
          <th scope="col">Saldo</th>
        </tr>
        <tr>
          <td>{{$qntViagem}}</td>
          <td></td>
          <td>{{ number_format($qntSaco, 3, ',', '.') }} Sc</td>
          <td>R$ {{ number_format($qntFrete, 2, ',', '.') }}</td>
          <td>R$ {{ number_format($qntAdiantamento, 2, ',', '.') }}</td>
          <td>R$ {{ ($qntAdiantamento)? number_format(($qntFrete - $qntAdiantamento), 2, ',', '.') : "0"}}</td>
        </tr>

      </tfoot>
    </table>
  </div>
</div>


<div class="card-footer text-muted">
</div>
@stop
@section('after_styles')
<link rel="stylesheet" href="{{ asset('css/print.css') }}">
@endsection