package br.com.trive.muambyte.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Client
{

   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   private Integer id;
   private String name;
   private String cpf;
   private String email;
   private String password;
   private String address;
   private Integer phone;

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

   public String getCpf()
   {
      return this.cpf;
   }

   public void setCpf(String cpf)
   {
      this.cpf = cpf;
   }

   public String getEmail()
   {
      return this.email;
   }

   public void setEmail(String email)
   {
      this.email = email;
   }

   public String getPassword()
   {
      return this.password;
   }

   public void setPassword(String password)
   {
      this.password = password;
   }

   public String getAddress()
   {
      return this.address;
   }

   public void setAddress(String address)
   {
      this.address = address;
   }

public Integer getPhone() {
	return phone;
}

public void setPhone(Integer phone) {
	this.phone = phone;
}
}
