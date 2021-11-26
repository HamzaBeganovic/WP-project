/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

/**
 *
 * @author Hamza
 */
public class Proizvod {
    
    int Id;
    String naziv;
    String opis;
    float cijena;
    
     public int getId() {
        return Id;
    }
    
    public void setId(int Id) {
        this.Id = Id;
    }
    
    public String getNaziv() {
        return naziv;
    }
    
    public void setNaziv(String naziv) {
        this.naziv = naziv;
    }
   
    public String getOpis() {
        return opis;
    }
    
    public void setOpis(String opis) {
        this.opis = opis;
    }
    
    public float getCijena() {
        return cijena;
    }
    
    public void setCijena(float cijena) {
        this.cijena = cijena;
    }

 
}
