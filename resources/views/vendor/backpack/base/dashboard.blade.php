@extends(backpack_view('blank'))

@php
use Illuminate\Support\Facades\DB;
$colherido = DB::table('lancamento_safras')->where('safra_id', '=', '2')->select(DB::raw('SUM(peso_bruto) as peso'))->first()->peso;
//dd($colherido);
Widget::add()->to('before_content')->type('div')->class('row')->content([
		// notice we use Widget::make() to add widgets as content (not in a group)
		Widget::make()
			->type('progress')
			->class('card border-0 text-white bg-primary')
			->progressClass('progress-bar')
            ->description('Quantidade Colherido Kg.')
            ->value($colherido)
			//->progress(100*(int)$colherido/1000)
			//->hint(1000-$colherido.' more until next milestone.'),	
		
	]);
@endphp

@section('content')
@endsection