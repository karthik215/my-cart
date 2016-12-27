package com.mycart.service;

import com.mycart.model.Cart;

public interface CartService {

    Cart getCartById (int cartId);

    void update(Cart cart);
}
