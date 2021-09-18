/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.unipiloto;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

/**
 *
 * @author cristian-patino
 */
public class Namehandler {
    private String name;
    private String fecha;
    private int age;
    
    public Namehandler() {
        this.name = null;
        this.fecha = null;
    }

    public String getName() {
        return "Mr. " + name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {        
        this.fecha = fecha;
    }

    public int getAge() {        
        int dia[] = new int [3];
        int x=0;
        int res=0;
        Calendar actual = new GregorianCalendar();
        for(int i = 0; i < fecha.length(); i++){            
            if("-".equals(String.valueOf(fecha.charAt(i)))){
                dia[x] = res;
                x++;
                res = 0;
            }
            else{
                res = (res*10) + Integer.valueOf(String.valueOf(fecha.charAt(i)));
            }
        }
        dia[x] = res;
        int añoac = actual.get(Calendar.YEAR), 
                mesac = actual.get(Calendar.MONTH) + 1, diaac = actual.get(Calendar.DAY_OF_MONTH);
        
        age = (añoac - dia[0]);
        if((mesac - dia[1]) < 0 || (mesac - dia[1]) == 0 && (diaac - dia[2]) < 0){
            age = age - 1;
        }
        return age;
    }

   
    
    
}
