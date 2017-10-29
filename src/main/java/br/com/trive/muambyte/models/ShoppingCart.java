package br.com.trive.muambyte.models;

import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ShoppingCart
{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private Product[] cart;
    private int productCount;  
    private double totalPrice;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Product[] getCart() {
		return cart;
	}
	public void setCart(Product[] cart) {
		this.cart = cart;
	}
	public int getProductCount() {
		return productCount;
	}
	public void setProductCount(int productCount) {
		this.productCount = productCount;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	
    public void addToCart(String productName, double price, int quantity)
    { 
        Product temp = new Product(productName, price, quantity);
        totalPrice += (price * quantity);
        productCount += quantity;
        cart[productCount] = temp;
    }

}
