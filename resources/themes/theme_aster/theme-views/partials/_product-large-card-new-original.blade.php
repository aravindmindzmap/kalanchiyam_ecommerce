@php
    use App\Utils\Helpers;
    use App\Utils\ProductManager;
    use Illuminate\Support\Str;
@endphp
@php($overallRating = $product->reviews ? getOverallRating($product->reviews) : 0)
<div class="product border rounded text-center d-flex flex-column gap-10 ov-hidden cursor-pointer get-view-by-onclick-k"
    data-link="{{ route('product', $product->slug) }}">
    <div class="product__top width--100 aspect-1">

        @if (isset($product->flash_deal_status) && $product->flash_deal_status)
            <div class="product__power-badge">
                <img src="{{ theme_asset('assets/img/svg/power.svg') }}" alt="" class="svg text-white">
            </div>
        @else
            <span class="product__discount-badge">
                <span>
                    New
                </span>
            </span>
        @endif
        <div class="product__actions d-flex flex-column gap-2">
            <a href="javascript:" data-action="{{ route('store-wishlist') }}" data-product-id="{{ $product['id'] }}"
                id="wishlist-{{ $product['id'] }}"
                class="btn-wishlist stopPropagation add-to-wishlist wishlist-{{ $product['id'] }} {{ isProductInWishList($product->id) ? 'wishlist_icon_active' : '' }}"
                title="{{ translate('add_to_wishlist') }}">
                <i class="bi bi-heart"></i>
            </a>
            <a href="javascript:"
                class="btn-compare stopPropagation add-to-compare compare_list-{{ $product['id'] }} {{ isProductInCompareList($product->id) ? 'compare_list_icon_active' : '' }}"
                data-action="{{ route('product-compare.index') }}" data-product-id="{{ $product['id'] }}"
                id="compare_list-{{ $product['id'] }}" title="{{ translate('add_to_compare_list') }}">
                <i class="bi bi-repeat"></i>
            </a>
            <a href="javascript:" class="btn-quickview stopPropagation get-quick-view"
                data-action="{{ route('quick-view') }}" data-product-id="{{ $product['id'] }}"
                title="{{ translate('quick_view') }}">
                <i class="bi bi-eye"></i>
            </a>
        </div>

        <div class="product__thumbnail align-items-center d-flex h-100 justify-content-center">
            <div id="carouselExampleDark-{{ $slider }}-{{ $product->id }}" class="carousel slide"
                data-bs-ride="false">
                <div class="carousel-indicators">
                    @foreach ($product->images_full_url as $key => $item)
                        @if ($item)
                            <button type="button"
                                data-bs-target="#carouselExampleDark-{{ $slider }}-{{ $product->id }}"
                                data-bs-slide-to="{{ $key }}" class="active bg-transparent"
                                aria-current="true" aria-label="Slide {{ (int) $key + 1 }}">
                                <img src="{{ getStorageImages(path: $item, type: 'product') }}" class="d-block w-100"
                                    alt="..."></button>
                        @endif
                    @endforeach
                </div>
                <div class="carousel-inner">
                    @foreach ($product->images_full_url as $key => $item)
                        <div class="carousel-item {{ $key == 0 ? 'active' : '' }}"
                            {{ $key == 0 ? 'data-bs-interval="10000"' : '' }}>
                            <a href="{{ route('product', $product->slug) }}"><img
                                    src="{{ getStorageImages(path: $item, type: 'product') }}" class="d-block w-100"
                                    alt="..."></a>
                        </div>
                    @endforeach
                </div>

            </div>

        </div>


        @if (isset($product->flash_deal_status) && $product->flash_deal_status)
            <div class="product__countdown d-flex gap-2 gap-sm-3 justify-content-center"
                data-date="{{ $product->flash_deal_end_date }}">
                <div class="days d-flex flex-column gap-2"></div>
                <div class="hours d-flex flex-column gap-2"></div>
                <div class="minutes d-flex flex-column gap-2"></div>
                <div class="seconds d-flex flex-column gap-2"></div>
            </div>
        @endif
    </div>
    <div class="product__summary d-flex flex-column align-items-center gap-1 pb-3 cursor-pointer">
        <div class="d-flex gap-2 align-items-center">
            <div class="star-rating text-gold fs-12">
                @for ($index = 1; $index <= 5; $index++)
                    @if ($index <= (int) $overallRating[0])
                        <i class="bi bi-star-fill"></i>
                    @elseif ($overallRating[0] != 0 && $index <= (int) $overallRating[0] + 1.1 && $overallRating[0] > ((int) $overallRating[0]))
                        <i class="bi bi-star-half"></i>
                    @else
                        <i class="bi bi-star"></i>
                    @endif
                @endfor
            </div>
            <span>( {{ count($product->reviews) }} )</span>
        </div>


        <div class="text-muted fs-12 ">
            <b>MODEL{{ $product->id }}</b>
        </div>
        <h6 class="product__title text-truncate">
            {{ Str::limit($product['name'], 25) }}
        </h6>

        <div class="product__price d-flex justify-content-center flex-wrap column-gap-2">
            @if (getProductPriceByType(product: $product, type: 'discount', result: 'value') > 0)
                <del class="product__old-price">{{ webCurrencyConverter($product->unit_price) }}</del>
            @endif
            <ins class="product__new-price">
                {{ getProductPriceByType(product: $product, type: 'discounted_unit_price', result: 'string') }}
            </ins>
            <div>
                @if (getProductPriceByType(product: $product, type: 'discount', result: 'value') > 0)
                    <span class="product__discount-badge-e product__discount-tag badge ">
                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12"
                            fill="none">
                            <path
                                d="M10.7986 5.77101L6.23834 0.911717C6.05352 0.71478 5.79994 0.595703 5.52057 0.595703H1.97039C1.41165 0.595703 0.956055 1.08117 0.956055 1.67656V5.45958C0.956055 5.76185 1.0678 6.02749 1.25692 6.22442L5.82143 11.0883C6.00195 11.2852 6.25983 11.4043 6.53491 11.4043C6.81428 11.4043 7.06786 11.2852 7.25268 11.0883L10.8029 7.30529C10.9877 7.10835 11.0994 6.83813 11.0994 6.54044C11.0994 6.24274 10.9877 5.96795 10.7986 5.77101ZM2.73114 3.29786C2.30994 3.29786 1.97039 2.93604 1.97039 2.48721C1.97039 2.03838 2.30994 1.67656 2.73114 1.67656C3.15235 1.67656 3.4919 2.03838 3.4919 2.48721C3.4919 2.93604 3.15235 3.29786 2.73114 3.29786Z"
                                fill="#26A349" />
                        </svg>
                        <span>
                            -{{ getProductPriceByType(product: $product, type: 'discount', result: 'string') }}
                        </span>
                    </span>
                @endif
            </div>
        </div>

        @if ($product->product_type == 'physical' && $product->current_stock <= 0)
            <span class="text-danger mb-2 fs-12"><b>Out Of Stock</b></span>
        @else
            <span class="text-success mb-2 fs-12"><b>In Stock</b></span>
        @endif


        @if ($product['product_type'] == 'physical' && $product->current_stock <= 0)
            @php($is_has_restock = App\Models\RestockProduct::where('product_id', $product->id)->whereHas('restockProductCustomers', function ($restockProductCustomers) {
            $restockProductCustomers->where('customer_id', auth('customer')->id());
        })->first())
            @if (empty($is_has_restock))
                <div class="product-restock-request-section collapse" {!! $product->current_stock <= 0 ? 'style="display: block;"' : '' !!}>
                    <button type="button"
                        class="btn request-restock-btn btn-danger fw-semibold product-restock-request-button-in-product-cart"
                        data-auth="{{ auth('customer')->check() }}" data-id="{{ $product->id }}"
                        data-quantity="{{ $product->minimum_order_qty ?? 1 }}"
                        data-product_variation_code="{{ null }}" data-key="{{ null }}"
                        data-_token="{{ csrf_token() }}" data-default="{{ translate('Request_Restock') }}"
                        data-requested="{{ translate('Request_Sent') }}">
                        {{ translate('Request_Restock') }}
                    </button>
                </div>
            @else
                <div class="product-restock-request-section collapse" {!! $product->current_stock <= 0 ? 'style="display: block;"' : '' !!}>
                    <button type="button" disabled class="btn request-restock-btn btn-danger fw-semibold">
                        {{ translate('Request_Sent') }}
                    </button>
                </div>
            @endif
        @else
            <div class="d-flex justify-content-between align-items-center gap-10 add-to-cart-section"
                style="flex-direction: row-reverse;">

                @php($in_cart_key = App\Models\Cart::where('product_id', $product->id)->whereIn('cart_group_id', App\Utils\CartManager::get_cart_group_ids())->first())

                <button class="btn btn-primary add-to-cart-enable-btn product-add-to-cart-button-in-product-cart dynamicSectionAbc{{ isset($in_cart_key) ? 'Cart'.$in_cart_key->id : 'Product'.$product->id }}  {{ isset($in_cart_key) ? 'hide' : 'show' }} "
                    onclick="add_to_cart_enable_btn(this)" data-action="{{ route('cart.add') }}" data-_token="{{ csrf_token() }}"
                        data-id="{{ $product->id }}" data-quantity="{{ $product->minimum_order_qty ?? 1 }}"
                        data-product_variation_code="{{ '' }}" data-key="{{ $in_cart_key?->id ?? '' }}" data-type="{{ isset($in_cart_key)? 'Cart' : 'Product' }}" data-cart_id="{{ isset($in_cart_key)? $in_cart_key?->id : '' }}
                        data-buy_now="{{ 0 }}" data-original_quantity="{{ $product->minimum_order_qty ?? 1 }}">

                    Add To Cart
                </button>

                <div class="add-to-cart-box {{ isset($in_cart_key?->id) ? 'show' : 'hide' }} dynamicSectionXyz{{ isset($in_cart_key)? 'Cart'.$in_cart_key->id : 'Product'.$product->id }}" data-cart_id="{{ isset($in_cart_key)? $in_cart_key?->id : '' }}" data-type="{{ isset($in_cart_key)? 'Cart' : 'Product' }}">
                    <button class="p-0 bg-transparent border-0 product-add-to-cart-button-in-product-cart"
                        data-action="{{ route('cart.add') }}" data-_token="{{ csrf_token() }}"
                        data-id="{{ $product->id }}" data-quantity="{{ $product->minimum_order_qty ?? 1 }}"
                        data-product_variation_code="{{ '' }}" data-key="{{ $in_cart_key?->id ?? '' }}"
                        data-buy_now="{{ 0 }}" onclick="add_to_cart_btn(this)" data-original_quantity="{{ $product->minimum_order_qty ?? 1 }}">

                        <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" viewBox="0 0 37 37"
                            fill="none">
                            <path
                                d="M0 7C0 3.13401 3.13401 0 7 0H30C33.866 0 37 3.13401 37 7V30C37 33.866 33.866 37 30 37H7C3.13401 37 0 33.866 0 30V7Z"
                                fill="#E2000E" />
                            <path
                                d="M13.9502 20.2488C13.9502 19.8622 14.2636 19.5488 14.6502 19.5488H22.3499C22.7365 19.5488 23.0499 19.8622 23.0499 20.2488C23.0499 20.6354 22.7365 20.9488 22.3499 20.9488H14.6502C14.2636 20.9488 13.9502 20.6354 13.9502 20.2488Z"
                                fill="white" />
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                d="M23.4234 12.2485L23.3614 11.9389C22.9034 9.6486 20.8924 8 18.5567 8H18.4431C16.1075 8 14.0965 9.6486 13.6384 11.9389L13.5765 12.2485C10.9313 12.5837 8.78395 14.6179 8.51859 17.2653L8.02746 22.1651C7.69399 25.4921 10.4416 28.2993 13.8576 28.2993H23.1423C26.5583 28.2993 29.3059 25.4921 28.9724 22.1651L28.4813 17.2653C28.2159 14.6179 26.0686 12.5837 23.4234 12.2485ZM22.7134 15.837C22.7892 16.2161 23.158 16.4619 23.537 16.3861C23.9161 16.3103 24.1619 15.9415 24.0861 15.5625L23.7178 13.7206C25.5366 14.141 26.9086 15.6127 27.0883 17.4049L27.5794 22.3047C27.8226 24.731 25.8087 26.8994 23.1423 26.8994H13.8576C11.1911 26.8994 9.17723 24.731 9.42044 22.3047L9.91157 17.4049C10.0912 15.6127 11.4633 14.141 13.2821 13.7206L12.9137 15.5625C12.8379 15.9415 13.0837 16.3103 13.4628 16.3861C13.8419 16.4619 14.2107 16.2161 14.2865 15.837L14.7339 13.5998H22.266L22.7134 15.837ZM15.014 12.1999H21.9859C21.6535 10.571 20.2204 9.39995 18.5567 9.39995H18.4431C16.7794 9.39995 15.3463 10.571 15.014 12.1999Z"
                                fill="white" />
                        </svg>

                    </button>
                </div>
                <div class="qty-input-box {{ isset($in_cart_key?->id) ? 'show' : 'hide' }} dynamicSectionXyz{{ isset($in_cart_key)? 'Cart'.$in_cart_key->id : 'Product'.$product->id }}" data-cart_id="{{ isset($in_cart_key)? $in_cart_key?->id : '' }}" data-type="{{ isset($in_cart_key)? 'Cart' : 'Product' }}">
                    <button class="qty-count qty-count--minus" type="button" onclick="qty_count_minus(this)">
                        <svg xmlns="http://www.w3.org/2000/svg" width="11" height="2" viewBox="0 0 11 2"
                            fill="none">
                            <path d="M0.445312 1.40547V0H10.9119V1.40547H0.445312Z" fill="black">
                            </path>
                        </svg>
                    </button>
                    <input class="add-product-qty" name="add-product-qty"
                        value="{{ ($in_cart_key) ? $in_cart_key?->quantity : ($product->minimum_order_qty ?? 1) }}" min="{{ $product->minimum_order_qty ?? 1 }}"
                        max="{{ $product['product_type'] == 'physical' ? $product->current_stock : 100 }}">
                    <button class="qty-count qty-count--add" type="button" onclick="qty_count_add(this)">
                        <svg xmlns="http://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 10 10"
                            fill="none">
                            <path d="M5.67482 10V0H4.32518V10H5.67482ZM10 5.67141V4.32859H0V5.67141H10Z"
                                fill="black" />
                        </svg>
                    </button>
                </div>

            </div>
        @endif



    </div>
</div>

<style>
    .qty-input-box {
        display: flex;
        align-items: center;
        border: 1px solid #f0f0f0;
        border-radius: 7px;
    }

    .qty-input-box .qty-count {
        width: 35px;
        height: 35px;
        border: none;
    }

    .qty-input-box .add-product-qty {
        border: none;
        width: 35px;
        text-align: center;
    }

    .qty-input-box .qty-count {
        width: 35px;
        height: 35px;
        border: none;
    }

    .product__discount-tag {
        background-color: #E6FFE6;
    }

    .product__discount-tag span {
        color: #1AA349;
    }

    .product__top::after {
        visibility: hidden !important;
    }

    .carousel-indicators [data-bs-target] {
        width: 45px !important;
        height: 45px !important;
    }

    .product__thumbnail .carousel-indicators button img {
        border-radius: 7px !important;
        border: 1px solid #f3f3f3;
    }

    .carousel-indicators {
        opacity: 1 !important;
    }

    .hide {
        display: none;
    }

    .show {
        display:inline-flexbox;
        align-items: anchor-center;
    }

    .add-product-qty {
        pointer-events: none;
        opacity: 0.6;
        user-select: none;

    }

</style>


<script>
    // add to cart button click
    function add_to_cart_btn(e) {
        const add_to_cart_btn = e;
        const add_to_cart_parent = $(add_to_cart_btn).parent();
        const add_to_cart_parent_sibling = add_to_cart_parent.next();

        // add_to_cart_parent.toggleClass("hide show");
        // add_to_cart_parent_sibling.toggleClass("hide show");
    }

    function qty_count_add(e) {
        const qty_count_add = e;
        const add_product_qty = $(qty_count_add).siblings(".add-product-qty");

        let cartType = add_product_qty.parent('.qty-input-box').data('type');
        let cartId = add_product_qty.parent('.qty-input-box').data('cart_id');

        let makeClass = '.dynamicSectionXyz'+cartType+cartId;
        let getElemtent = $(makeClass).find('.add-product-qty');

        const current_val = parseInt(add_product_qty.val()) || 0;
        const maximum_order_qty = add_product_qty.attr('max');

        if (maximum_order_qty <= current_val) {
            getElemtent.val(current_val);
        } else {
            getElemtent.val(parseInt(current_val) + 1);
            $('.dynamicSectionAbc'+cartType+cartId).data('quantity', parseInt(current_val) + 1);
            $('.dynamicSectionXyz'+cartType+cartId).find('.product-add-to-cart-button-in-product-cart').data('quantity', parseInt(current_val) + 1);
        }

    }

    function qty_count_minus(e) {
        const qty_count_minus = e;
        const add_product_qty = $(qty_count_minus).siblings(".add-product-qty");

        let cartType = add_product_qty.parent('.qty-input-box').data('type');
        let cartId = add_product_qty.parent('.qty-input-box').data('cart_id');

        let makeClass = '.dynamicSectionXyz'+cartType+cartId;
        let getElemtent = $(makeClass).find('.add-product-qty');

        const current_val = parseInt(add_product_qty.val()) || 0;
        const minimum_order_qty = add_product_qty.attr('min');

        if (minimum_order_qty >= current_val) {
            getElemtent.val(current_val);

        } else {
            getElemtent.val(parseInt(current_val) - 1);
            $('.dynamicSectionAbc'+cartType+cartId).data('quantity', parseInt(current_val) - 1);
            $('.dynamicSectionXyz'+cartType+cartId).find('.product-add-to-cart-button-in-product-cart').data('quantity', parseInt(current_val) - 1);

        }
    }

    function add_to_cart_enable_btn(e) {
        const add_to_cart_enable_btn = $(e);
        let getCartId = add_to_cart_enable_btn.data('id');
        let getCartType = add_to_cart_enable_btn.data('type');

        $('.dynamicSectionAbc'+getCartType+getCartId).toggleClass("hide show");
        $('.dynamicSectionXyz'+getCartType+getCartId).toggleClass("hide show");

    }
</script>
