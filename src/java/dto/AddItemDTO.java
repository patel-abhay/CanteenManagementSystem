/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author ashug
 */
public class AddItemDTO 
{
    String id,name,quantity,type,price,category;
    
    public void setId(String id)
    {
        this.id = id;
    }
    public void setName(String name)
    {
        this.name = name;
    }
    public void setType(String type)
    {
        this.type = type;
    }
    public void setCategory(String category)
    {
        this.category = category;
    }
    public void setPrice(String price)
    {
        this.price = price;
    }
    public void setQuantity(String quantity)
    {
        this.quantity = quantity;
    }
    
    public String getId()
    {
        return id;
    }
    public String getName()
    {
        return name;
    }
    public String getType()
    {
        return type;
    }
    public String getCategory()
    {
        return category;
    }
    public String getQuantity()
    {
        return quantity;
    }
    public String getPrice()
    {
        return price;
    }
    
}
