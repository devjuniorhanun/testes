@extends(backpack_view('blank'))

@php

@endphp

@section('header')
<div class="container-fluid">
  <h2>
    <span class="text-capitalize">Relátorio de Transportador</span>
  </h2>
</div>
@endsection

@section('content')
<div class="row no-print">
  <div class="col">
    {{-- Abre o formulário --}}
    {!! Form::open(['route' => 'relatorio_safra']) !!}
    {{-- Chama os campos do formulário --}}
    @include('admin.lacamento_lavoura.form_filtros_motorista')
    {{-- Fecha o formulário --}}
    {!! Form::close() !!}
  </div>
</div>
<div class="card-body">
  <table class="table table-striped table-hover table-sm">
    <thead>
      <tr>
        <th scope="col">QtnViagem</th>
        <th scope="col">Transportador</th>
        <th scope="col">Peso Bruto</th>
        <th scope="col">Valor Frete</th>
        <th scope="col">Adiantamentos</th>
        <th>Valor</th>
      </tr>
    </thead>
    <tbody>

      @forelse ($listaTransportador as $lista)



      <tr>
        <th scope="row">{{ $lista->qtnViagem }}</th>
        <td>{{ $lista->nome_fantasia }}</td>
        <td>{{ number_format($lista->sacoBruto, 0, '.', '.') }} Sc</td>
        <td>{{ number_format($lista->frete, 2, ',', '.') }}</td>
        <td>{{extenso(number_format($lista->frete, 2, ',', '.'),1)}}</td>
        <td>{{ ($lista->valorAdiantamento)?$lista->valorAdiantamento : "0"}}</td>

      </tr>
      @empty
      <p>Não foi encontrado Nem um Registro</p>
      @endforelse

    </tbody>
    <tfoot>

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