<hr>
<div class="form-row">
    <div class="form-group col-md-2">
        <label for="periodo">Periodo.:</label><br>
        <select class="form-control form-control-sm" id="periodo" name="periodo">
        <option value="0">Periodo</option>
            @foreach($listaData as $lista)
                <option value="{{ $lista->data_colhido }}">{{ Carbon\Carbon::parse($lista->data_colhido)->format('d/m/Y') }}</option>
            @endforeach
        </select>
    </div>
    <div class="form-group col-md-2">
        <label for="motorista">Motorista.:</label><br>
        <select class="form-control form-control-sm" id="motorista" name="motorista">
        <option value="0">Motorista</option>
            @foreach($listaMotorista as $lista)
                <option value="{{ $lista->id }}">{{ $lista->nome }}</option>
            @endforeach
        </select>
    </div>
    <div class="form-group col-md-2">
        <label for="talhao">Talhões.:</label><br>
        <select class="form-control form-control-sm" id="talhao" name="talhao">
        <option value="0">Talhão</option>
            @foreach($listaTalhao as $lista)
                <option value="{{ $lista->id }}">{{ $lista->nome }}</option>
            @endforeach
        </select>
    </div>
    <div class="form-group col-md-2">
        <label for="armazem">Armázens.:</label><br>
        <select class="form-control form-control-sm" id="armazem" name="armazem">
        <option value="0">Armazén</option>
            @foreach($listaArmazem as $lista)
                <option value="{{ $lista->id }}">{{ $lista->nome }}</option>
            @endforeach
        </select>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="ciclo_id">&nbsp;</label><br>
            {!! Form::submit('Filtrar', ['id' => 'Filtrar','class' => 'btn btn-info btn-sm']); !!}
        </div>
    </div>

</div>