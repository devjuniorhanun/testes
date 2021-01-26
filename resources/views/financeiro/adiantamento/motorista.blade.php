@extends(backpack_view('blank'))

@php
$defaultBreadcrumbs = [
trans('backpack::crud.admin') => url(config('backpack.base.route_prefix'), 'dashboard'),
$crud->entity_name_plural => url($crud->route),
trans('backpack::crud.preview') => false,
];

// if breadcrumbs aren't defined in the CrudController, use the default breadcrumbs
$breadcrumbs = $breadcrumbs ?? $defaultBreadcrumbs;
@endphp

@section('header')
<section class="container-fluid d-print-none">
    <a href="javascript: window.print();" class="btn float-right"><i class="la la-print"></i></a>
    <h2>
        <span class="text-capitalize">{!! $crud->getHeading() ?? $crud->entity_name_plural !!}</span>
        <small>{!! $crud->getSubheading() ?? mb_ucfirst(trans('backpack::crud.preview')).' '.$crud->entity_name !!}.</small>
        @if ($crud->hasAccess('list'))
        <small class=""><a href="{{ url($crud->route) }}" class="font-sm"><i class="la la-angle-double-left"></i> {{ trans('backpack::crud.back_to_all') }} <span>{{ $crud->entity_name_plural }}</span></a></small>
        @endif
    </h2>
</section>
@endsection

@section('content')
<div class="row">
    <div class="{{ $crud->getShowContentClass() }}">

        <!-- Default box -->
        <div class="">
            @if ($crud->model->translationEnabled())
            <div class="row">
                <div class="col-md-12 mb-2">
                    <!-- Change translation button group -->
                    <div class="btn-group float-right">
                        <button type="button" class="btn btn-sm btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            {{trans('backpack::crud.language')}}: {{ $crud->model->getAvailableLocales()[request()->input('locale')?request()->input('locale'):App::getLocale()] }} &nbsp; <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                            @foreach ($crud->model->getAvailableLocales() as $key => $locale)
                            <a class="dropdown-item" href="{{ url($crud->route.'/'.$entry->getKey().'/show') }}?locale={{ $key }}">{{ $locale }}</a>
                            @endforeach
                        </ul>
                    </div>
                </div>
            </div>
            @else
            @endif
            <div class="card no-padding no-border">
                <div class="row">
                    <table class="table">
                        <thead>
                            <tr>
                                <td><img src="{{ asset('img/logo.png') }}" alt="Santa Martha" class="d-none print" style="width: 100px;"></td>
                            </tr>
                            <tr>
                                <th scope="col">Inscrição</th>
                                <th scope="col">Fazenda</th>
                                <th>Produtor</th>
                                <th>Comprador</th>
                                <th scope="col">Qnt Viagem</th>
                                <th scope="col">1º Pesagem</th>
                                <th scope="col">2º Pesagem</th>
                                <th scope="col">Saida Seca</th>
                                <th scope="col">Qnt Sacos</th>
                            </tr>
                        </thead>
                        <tbody>

                        </tbody>
                    </table>
                </div>

            </div><!-- /.box-body -->
        </div><!-- /.box -->

    </div>
</div>
@endsection


@section('after_styles')
<link rel="stylesheet" href="{{ asset('css/print.css') }}">
@endsection

@section('after_scripts')
<script src="{{ asset('packages/backpack/crud/js/crud.js') }}"></script>
<script src="{{ asset('packages/backpack/crud/js/show.js') }}"></script>
@endsection