package br.com.trive.muambyte.models;

import javax.persistence.Column;

//import java.io.Serializable;
//import java.math.BigDecimal;
//import java.util.Date;
// 
//import javax.persistence.Column;
//import javax.persistence.Entity;
//import javax.persistence.Id;
//import javax.persistence.Lob;
//import javax.persistence.Table;
//import javax.persistence.Temporal;
//import javax.persistence.TemporalType;
//import javax.validation.constraints.NotNull;
// 
//@Entity
//@Table(name = "Products")
//public class Product implements Serializable {
// 
//    private static final long serialVersionUID = -1000119078147252957L;
// 
//    private String code;
//    private String name;
//    private double price;
//    private byte[] image;
//	private BigDecimal discount_price;
//	private Boolean featured;
//	@NotNull
//	private Boolean disable = false;
// 
//    // For sort.
//    private Date createDate;
// 
//    public Product() {
//    }
// 
//    @Id
//    @Column(name = "Code", length = 20, nullable = false)
//    public String getCode() {
//        return code;
//    }
// 
//    public void setCode(String code) {
//        this.code = code;
//    }
// 
//    @Column(name = "Name", length = 255, nullable = false)
//    public String getName() {
//        return name;
//    }
// 
//    public void setName(String name) {
//        this.name = name;
//    }
// 
//    @Column(name = "Price", nullable = false)
//    public double getPrice() {
//        return price;
//    }
// 
//    public void setPrice(double price) {
//        this.price = price;
//    }
// 
//    @Temporal(TemporalType.TIMESTAMP)
//    @Column(name = "Create_Date", nullable = false)
//    public Date getCreateDate() {
//        return createDate;
//    }
// 
//    public void setCreateDate(Date createDate) {
//        this.createDate = createDate;
//    }
// 
//    @Lob
//    @Column(name = "Image", length = Integer.MAX_VALUE, nullable = true)
//    public byte[] getImage() {
//        return image;
//    }
// 
//    public void setImage(byte[] image) {
//        this.image = image;
//    }
//
//
//	public BigDecimal getDiscount_price() {
//		return discount_price;
//	}
//	
//	public void setDiscount_price(BigDecimal discount_price) {
//		this.discount_price = discount_price;
//	}
//	
//	public Boolean getFeatured() {
//		return featured;
//	}
//	
//	public void setFeatured(Boolean featured) {
//		this.featured = featured;
//	}
//	
//	public Boolean getDisable() {
//		return disable;
//	}
//	
//	public void setDisable(Boolean disable) {
//		this.disable = disable;
//	}
//}



















import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

import java.math.BigDecimal;
import br.com.trive.muambyte.models.Category;

@Entity
public class Product
{

   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   private Integer id;
   private String code;
   private String name;
   private String description;
   private double price;
   private BigDecimal discount_price;
   private Boolean featured;
   @NotNull
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

   public double getPrice()
   {
      return this.price;
   }

   public void setPrice(double price)
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
	
	
  @Column(name = "Code", length = 20, nullable = false)
  public String getCode() {
      return code;
  }

  public void setCode(String code) {
      this.code = code;
  }
	
	
}
