<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}" dir="{{ session()->get('direction') }}">
<head>

    <meta name="base-url" content="{{ url('/') }}">
    <meta property="og:site_name" content="{{ $web_config['company_name'] }}" />

    <meta name="google-site-verification" content="{{getWebConfig('google_search_console_code')}}">
    <meta name="msvalidate.01" content="{{getWebConfig('bing_webmaster_code')}}">
    <meta name="baidu-site-verification" content="{{getWebConfig('baidu_webmaster_code')}}">
    <meta name="yandex-verification" content="{{getWebConfig('yandex_webmaster_code')}}">

    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="robots" content="index, follow">
    <meta name="_token" content="{{csrf_token()}}">
    <link rel="shortcut icon" href="{{$web_config['fav_icon']['path']}}"/>

    <link rel="stylesheet" href="{{ theme_asset('assets/css/fonts-init.css') }}"/>
    <link rel="stylesheet" href="{{ theme_asset('assets/css/bootstrap.min.css') }}"/>
    <link rel="stylesheet" href="{{ theme_asset('assets/css/bootstrap-icons.min.css') }}"/>
    <link rel="stylesheet" href="{{ theme_asset('assets/plugins/magnific-popup-1.1.0/magnific-popup.css') }}" />
    <link rel="stylesheet" href="{{ theme_asset('assets/plugins/swiper/swiper-bundle.min.css') }}"/>
    <link rel="stylesheet" href="{{ theme_asset('assets/plugins/sweet_alert/sweetalert2.css') }}">
    <link rel="stylesheet" href="{{ theme_asset('assets/css/toastr.css') }}"/>

    <link rel="stylesheet" href="{{ theme_asset('assets/plugins/select2/css/select2.min.css') }}">
    <link rel="stylesheet" href="{{ theme_asset('assets/plugins/intl-tel-input/css/intlTelInput.css') }}">
    <link rel="stylesheet" href="{{ theme_asset('assets/css/style.css') }}"/>

    @stack('css_or_js')
    @include(VIEW_FILE_NAMES['robots_meta_content_partials'])
    <title>@yield('title')</title>

    <link rel="stylesheet" href="{{ theme_asset('assets/css/custom.css') }}"/>
    <style>
        :root {
            --bs-primary: {{ $web_config['primary_color'] }};
            --bs-primary-rgb: {{ getHexToRGBColorCode($web_config['primary_color']) }};
            --primary-dark: {{ $web_config['primary_color'] }};
            --primary-light: {{ $web_config['primary_color_light'] }};
            --bs-secondary: {{ $web_config['secondary_color'] }};
            --bs-secondary-rgb: {{ getHexToRGBColorCode($web_config['secondary_color']) }};
        }

        .announcement-color {
            background-color: {{ $web_config['announcement']['color'] }};
            color: {{$web_config['announcement']['text_color']}};
        }
        .btn-outline-success {
            --bs-btn-hover-bg: {{ $web_config['primary_color'] }} !important;
            --bs-btn-active-bg: {{ $web_config['primary_color'] }} !important;
            --bs-btn-border-color: {{ $web_config['primary_color'] }} !important;
        }
        .btn-outline-success:active {
            background-color: var(--bg-color) !important;
            color: {{ $web_config['primary_color'] }} !important;
            --bs-btn-border-color: {{ $web_config['primary_color'] }} !important;
        }
    </style>

    {!! getSystemDynamicPartials(type: 'analytics_script') !!}
</head>
<body class="toolbar-enabled">
<script>
    'use strict';
    function setThemeMode() {
        if (localStorage.getItem('theme') === null) {
            document.body.setAttribute('theme', 'light');
        } else {
            document.body.setAttribute('theme', localStorage.getItem('theme'));
        }
    }
    setThemeMode();
</script>

<div class="preloader d--none" id="loading">
    <img width="200" alt="" src="{{ getStorageImages(path: getWebConfig(name: 'loader_gif'), type: 'source', source: theme_asset('assets/img/loader.gif')) }}">
</div>
@include('theme-views.layouts.partials._alert-message')
@include('theme-views.layouts.partials._header')
@include('theme-views.layouts.partials._settings-sidebar')
@yield('content')
@include('theme-views.layouts.partials._feature')
@include('theme-views.layouts.partials._footer')

<a href="#" class="back-to-top">
    <i class="bi bi-arrow-up"></i>
</a>

<div class="app-bar px-sm-2 d-xl-none" id="mobile_app_bar">
    @include('theme-views.layouts.partials._app-bar')
</div>

<span class="customize-text"
      data-textno="{{ translate('no') }}"
      data-textyes="{{ translate('yes') }}"
      data-textnow="{{ translate('now') }}"
      data-textsuccessfullycopied="{{ translate('successfully_copied') }}"
      data-text-no-discount="{{ translate('no_discount') }}"
      data-stock-available="{{ translate('stock_available') }}"
      data-stock-not-available="{{ translate('stock_not_available') }}"
      data-update-this-address="{{ translate('update_this_Address') }}"
      data-password-characters-limit="{{ translate('your_password_must_be_at_least_8_characters') }}"
      data-password-not-match="{{ translate('password_does_not_Match') }}"
      data-textpleaseselectpaymentmethods="{{ translate('please_select_a_payment_Methods') }}"
      data-reviewmessage="{{ translate('you_can_review_after_the_product_is_delivered') }}"
      data-refundmessage="{{ translate('you_can_refund_request_after_the_product_is_delivered') }}"
      data-textshoptemporaryclose="{{ translate('This_shop_is_temporary_closed_or_on_vacation').' '.translate('You_cannot_add_product_to_cart_from_this_shop_for_now') }}"
></span>
<span class="system-default-country-code" data-value="{{ getWebConfig(name: 'country_code') ?? 'us' }}"></span>
<span class="cannot_use_zero" data-text="{{ translate('cannot_Use_0_only') }}"></span>
<span class="system-default-country-code" data-value="{{ getWebConfig(name: 'country_code') ?? 'us' }}"></span>
@php($cookie = $web_config['cookie_setting'] ? json_decode($web_config['cookie_setting']['value'], true):null)
@if($cookie && $cookie['status']==1)
    <section id="cookie-section"></section>
@endif

@include('theme-views.layouts.partials.modal._register')
@include('theme-views.layouts.partials.modal._login')
@include('theme-views.layouts.partials.modal._quick-view')
@include('theme-views.layouts.partials.modal._buy-now')
@include('theme-views.layouts.partials.modal._initial')

@php($whatsapp = getWebConfig(name: 'whatsapp'))
<div class="social-chat-icons">
    @if(isset($whatsapp['status']) && $whatsapp['status'] == 1 )
        <div class="">
            <a href="https://wa.me/{{ $whatsapp['phone'] }}?text=Hello%20there!" target="_blank">
                <img src="{{theme_asset('assets/img/whatsapp.svg')}}" width="35" class="chat-image-shadow"
                     alt="Chat with us on WhatsApp">
            </a>
        </div>
    @endif
</div>

@include('theme-views.layouts.partials._translate-text-for-js')
@include('theme-views.layouts.partials._route-for-js')
@include('theme-views.layouts.main-script')
@include('theme-views.layouts._firebase-script')

{!! Toastr::message() !!}
<script>
    function route_alert(route, message) {
        Swal.fire({
            title: "{{translate('are_you_sure')}}?",
            text: message,
            type: 'warning',
            showCancelButton: true,
            cancelButtonColor: 'default',
            confirmButtonColor: '{{$web_config['primary_color']}}',
            cancelButtonText: '{{translate('no')}}',
            confirmButtonText: '{{translate('yes')}}',
            reverseButtons: true
        }).then((result) => {
            if (result.value) {
                location.href = route;
            }
        })
    }
</script>

<script>
        $(document).ready(function() {
            $(".product-slider").slick({
                slidesToShow: 5,
                slidesToScroll: 1,
                infinite: true,
                dots: false,
                arrows: true,
                prevArrow: `<button>
                        <svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" viewBox="0 0 48 48" fill="none" class="prev-btn">
                    <g filter="url(#filter0_d_4_5041)">
                        <path d="M3 21C3 9.40202 12.402 0 24 0C35.598 0 45 9.40202 45 21C45 32.598 35.598 42 24 42C12.402 42 3 32.598 3 21Z" fill="white"/>
                        <path d="M24 0.5C35.3218 0.5 44.5 9.67816 44.5 21C44.5 32.3218 35.3218 41.5 24 41.5C12.6782 41.5 3.5 32.3218 3.5 21C3.5 9.67816 12.6782 0.5 24 0.5Z" stroke="#D3D3D4"/>
                    </g>
                    <path d="M28 13L20.0096 20.9904L28 28.9807" stroke="black"/>
                    <defs>
                        <filter id="filter0_d_4_5041" x="0" y="0" width="48" height="48" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
                        <feFlood flood-opacity="0" result="BackgroundImageFix"/>
                        <feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" result="hardAlpha"/>
                        <feOffset dy="3"/>
                        <feGaussianBlur stdDeviation="1.5"/>
                        <feComposite in2="hardAlpha" operator="out"/>
                        <feColorMatrix type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0588235 0"/>
                        <feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow_4_5041"/>
                        <feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow_4_5041" result="shape"/>
                        </filter>
                    </defs>
                    </svg>
                        </button>`,
                nextArrow: `<button>
                    <svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" viewBox="0 0 48 48" fill="none" class="next-btn">
                    <g filter="url(#filter0_d_4_5047)">
                        <path d="M3 21C3 9.40202 12.402 0 24 0C35.598 0 45 9.40202 45 21C45 32.598 35.598 42 24 42C12.402 42 3 32.598 3 21Z" fill="white"/>
                        <path d="M24 0.5C35.3218 0.5 44.5 9.67816 44.5 21C44.5 32.3218 35.3218 41.5 24 41.5C12.6782 41.5 3.5 32.3218 3.5 21C3.5 9.67816 12.6782 0.5 24 0.5Z" stroke="#D3D3D4"/>
                    </g>
                    <path d="M20.0096 13L28 20.9904L20.0096 28.9807" stroke="black"/>
                    <defs>
                        <filter id="filter0_d_4_5047" x="0" y="0" width="48" height="48" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
                        <feFlood flood-opacity="0" result="BackgroundImageFix"/>
                        <feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" result="hardAlpha"/>
                        <feOffset dy="3"/>
                        <feGaussianBlur stdDeviation="1.5"/>
                        <feComposite in2="hardAlpha" operator="out"/>
                        <feColorMatrix type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0588235 0"/>
                        <feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow_4_5047"/>
                        <feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow_4_5047" result="shape"/>
                        </filter>
                    </defs>
                    </svg>
                        </button>`,
                responsive: [{
                        breakpoint: 1800,
                        settings: {
                            slidesToShow: 3,
                            slidesToScroll: 1,
                        }
                    },
                    {
                        breakpoint: 991,
                        settings: {
                            slidesToShow: 2,
                            slidesToScroll: 1,
                        }
                    },
                    {
                        breakpoint: 767,
                        settings: {
                            slidesToShow: 1,
                            slidesToScroll: 1,
                            dots: true,
                            arrows: false,
                        }
                    }
                ]
            });
        });
    </script>

    @stack('script')

</body>
</html>
