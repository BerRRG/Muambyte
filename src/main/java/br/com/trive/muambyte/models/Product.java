package br.com.trive.muambyte.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import java.math.BigDecimal;
import br.com.trive.muambyte.models.Category;

@Entity
public class Product
{

   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   private Integer id;
   private String name;
   private String description;
   private BigDecimal price;
   private BigDecimal discount_price;
   private Boolean featured;
   private Boolean disable = false;
   private String image;
   @ManyToOne
   private Category category;

   public Integer getId()
   {
      return this.id;
   }

   public void setId(Integer id)
   {
      this.id = id;
   }

   public String getName()
   {
      return this.name;
   }

   public void setName(String name)
   {
      this.name = name;
   }

   public String getDescription()
   {
      return this.description;
   }

   public void setDescription(String description)
   {
      this.description = description;
   }

   public BigDecimal getPrice()
   {
      return this.price;
   }

   public void setPrice(BigDecimal price)
   {
      this.price = price;
   }

   public Category getCategory()
   {
      return this.category;
   }

   public void setCategory(Category category)
   {
      this.category = category;
   }

	public BigDecimal getDiscount_price() {
		return discount_price;
	}
	
	public void setDiscount_price(BigDecimal discount_price) {
		this.discount_price = discount_price;
	}
	
	public Boolean getFeatured() {
		return featured;
	}
	
	public void setFeatured(Boolean featured) {
		this.featured = featured;
    }

  public Boolean getDisable() {
		return disable;
	}
	
	public void setDisable(Boolean disable) {
		this.disable = disable;
  }

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
}
