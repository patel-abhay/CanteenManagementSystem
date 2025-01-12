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
public class PurchaseComboDTO 
{
    String id,name,quantity;
    int price;
    
    public void setId(String id)
    {
        this.id = id;
    }
    
    public String getId()
    {
        return id;
    }
    
    public void setName(String name)
    {
        this.name = name;
    }
    
    public String getName()
    {
        return name; 
    }
     
    public void setQuantity(String quantity)
    {
        this.quantity = quantity;
    }
    
    public String getQuantity()
    {
        return quantity; 
    }
   
    public void setTotal(int price)
    {
        this.price = price;
    }
    
    public int getTotal()
    {
        return price;
    }
}
