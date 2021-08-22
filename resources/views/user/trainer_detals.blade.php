@extends('layouts.user.app')
@section('content')
@php 
 
    

@endphp
<section>
    <div class="award_banner news_banner" style="background: url({{asset($all->image)}});">
<div class="award_content_body">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="award_heading latest_heading_des">
                    <h2>{{ $all->title }}</h2>
                </div>
            </div>
        </div>
    </div>
</div>
    </div>
</section>
<section class="py-5">
    <div class="container">
        <div class="row justify-content-center ">
            <div class="col-md-12 py-2">
            
                <div class="latest_news_body_des">
                    <div class="latest_news_date_des">
                        <h4>{{ $all->title }}</h4>
                        <p>Published <span>{{ $all->date }}</span></p>
                    </div>
                    <div class="latest_news_img_des">
                        <img src="{{ asset($all->image) }}" alt="" class="img-fluid img-responsive">
                    </div>
                    <div class="latest_description" data-aos="fade-up" data-aos-duration="600" data-aos-easing="linear">
                        <p>{!! $all->description !!}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection