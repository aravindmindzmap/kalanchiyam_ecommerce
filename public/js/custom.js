// add to cart button click
function add_to_cart_btn(e) {
    const add_to_cart_btn = e;
    const add_to_cart_parent = $(add_to_cart_btn).parent();
    const add_to_cart_parent_sibling = add_to_cart_parent.next();
    add_to_cart_parent.toggleClass("hide show");
    add_to_cart_parent_sibling.toggleClass("hide show");
}

function qty_count_add(e) {
    const qty_count_add = e;
    const add_product_qty = $(qty_count_add).siblings(".add-product-qty");
    const current_val = parseInt(add_product_qty.val()) || 0;

    add_product_qty.val(parseInt(current_val) + 1);
}

function qty_count_minus(e) {
    const qty_count_minus = e;
    const add_product_qty = $(qty_count_minus).siblings(".add-product-qty");
    const current_val = parseInt(add_product_qty.val()) || 0;
    add_product_qty.val(current_val == 0 ? 0 : parseInt(current_val) - 1);
}
