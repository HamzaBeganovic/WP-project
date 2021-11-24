/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

/**
 *
 * @author Tarik
 */
public class Proizvod {
    
    private String naziv;
    private String opis;
    private float cijena;

    public void setNaziv(String naziv) {
        this.naziv = naziv;
    }

    public void setOpis(String opis) {
        this.opis = opis;
    }

    public void setCijena(float cijena) {
        this.cijena = cijena;
    }
    
    public String getNaziv() {
        return naziv;
    }

    public String getOpis() {
        return opis;
    }

    public float getCijena() {
        return cijena;
    }

    public void setCijena(String cijena) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
   
    
    
    
}
