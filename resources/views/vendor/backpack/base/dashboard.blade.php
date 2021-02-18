@extends(backpack_view('blank'))

@php
use Illuminate\Support\Facades\DB;
$colherido = number_format(DB::table('lancamento_safras')->where('safra_id', '=', '2')->select(DB::raw('SUM(peso_liquido) as peso'))->first()->peso, 0, '.', '.');
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
    
    $widgets['after_content'][] = [
	  'type' => 'div',
	  'class' => 'row',
      'content' => [ // widgets 
        [ 
		        'type' => 'chart',
		        'wrapperClass' => 'col-md-4',
		        // 'class' => 'col-md-6',
		        'controller' => \App\Http\Controllers\Admin\Charts\TalhaoChartController::class,
				'content' => [
				    'header' => 'Talhões', // optional
				    // 'body' => 'This chart should make it obvious how many new users have signed up in the past 7 days.<br><br>', // optional
		    	]
	    	],


	  ]
	];
@endphp

@section('content')
@endsection