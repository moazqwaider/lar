@foreach ($posts as $posts )
    <div class="card">
        <div class="card_title">
            {{$posts['title']}}

             </div>
             <div class="card_boby">
                {{$posts['boby']}}
            </div>
        </div>

@endforeach


