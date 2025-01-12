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
public class DeductAmountDTO 
{
    String id,name;
    int amt;
    
    public void setId(String id)
    {
        this.id = id;
    }
    
    public void setName(String name)
    {
        this.name = name;
    }
    
    public String getId()
    {
        return id;
    }
    
    public String getName()
    {
        return name;
    }
    
    public void setAmt(String amt)
    {
        this.amt = Integer.parseInt(amt);
    }
    
    public int getAmt()
    {
        return amt;
    }
}
