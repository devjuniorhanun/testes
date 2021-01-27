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
    </h2>
</section>
@endsection

@section('content')

<div class="row border rounded">
    <div class="col">
        <div class="row">
            <div class="col">&nbsp;</div>
        </div>
        <div class="row">
            <div class="col col-md-4 border rounded recibo">Recibo</div>
            <div class="col col-md-1 offset-md-2 border rounded">
                <div class="row">
                    <div class="col"><b>Nº</b></div>
                </div>
                <div class="row">
                    <div class="col numeroRecibo">1</div>
                </div>
            </div>
            <div class="col col-md-2 offset-md-1 border rounded">
                <div class="row">
                    <div class="col"><b>Valor R$</b></div>
                </div>
                <div class="row">
                    <div class="col numeroRecibo">R$ 500,00</div>
                </div>

            </div>
        </div>

        <div class="row">
            <div class="col">&nbsp;</div>
        </div>

        <div class="row">
            <div class="col border rounded">
                Recebi(emos) de: <b>Paulo Roberto Titoto</b>
            </div>
        </div>
        <div class="row">
            <div class="col">&nbsp;</div>
        </div>

        <div class="row">
            <div class="col border rounded">
                Endereço: <b>Fazenda Santa Martha, Rod. BR-452, Km 101 - Zona Rural</b>
            </div>
        </div>
        <div class="row">
            <div class="col">&nbsp;</div>
        </div>

        <div class="row">
            <div class="col border rounded">
                A importância de: <b>( {{extenso(500)}} ) </b>
            </div>
        </div>
        <div class="row">
            <div class="col">&nbsp;</div>
        </div>

        <div class="row">
            <div class="col border rounded">
                Referente a: <b>Adiantamento de Serviços de Frete da Safra - 20/21 </b>
            </div>
        </div>
        <div class="row">
            <div class="col">&nbsp;</div>
        </div>
        <div class="row">
            <div class="col">&nbsp;</div>
        </div>

        <div class="row">
            <div class="col border rounded">
                <b>
                    <div class="text-center">Recebimento através de </div>
                </b>
            </div>
        </div>

        <div class="row">
            <div class="col col-md-2 border rounded recibo">Dep . Banc.</div>
            <div class="col col-md-1 offset-md-1 border rounded">
                <div class="row">
                    <div class="col"><b>Nº</b></div>
                </div>
                <div class="row">
                    <div class="col numeroRecibo">1</div>
                </div>
            </div>
            <div class="col col-md-4 offset-md-1 border rounded">
                <div class="row">
                    <div class="col"><b>Banco</b></div>
                </div>
                <div class="row">
                    <div class="col numeroRecibo">Banco</div>
                </div>

            </div>
            <div class="col col-md-2 offset-md-1 border rounded">
                <div class="row">
                    <div class="col"><b>Agência</b></div>
                </div>
                <div class="row">
                    <div class="col numeroRecibo">123</div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col">&nbsp;</div>
        </div>
        <div class="row">
            <div class="col col-md-4">
                <div class="row">
                    <div class="col border rounded">
                        <div class="row">
                            <div class="col">
                                Data
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                27/01/2021
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col border rounded">
                        <div class="row">
                            <div class="col">
                                Data
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                27/01/2021
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col border rounded">
                        <div class="row">
                            <div class="col">
                                Data
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                27/01/2021
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="col col-md-4">
                <div class="row">
                    <div class="col border rounded">
                        <div class="row">
                            <div class="col">
                                Data
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                27/01/2021
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col border rounded">
                        <div class="row">
                            <div class="col border rounded">
                                <div class="row">
                                    <div class="col">
                                        &nbsp;
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        &nbsp;
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <hr>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col text-center">
                                        Assinatura
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col col-md-3">
                <div class="row">
                    <div class="col border rounded">
                        <div class="col">
                            <img src="{{ asset('img/logo.png') }}" alt="Santa Martha" width="100px" >
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col text-right">ola</div>
                </div>
            </div>
        </div>

        @endsection

        @section('after_styles')
        <link rel="stylesheet" href="{{ asset('css/style.css') }}">
        @endsection