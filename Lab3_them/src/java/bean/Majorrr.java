/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author BienBien
 */
public class Majorrr {

    public Majorrr() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public Majorrr(String id, String major) {
        this.id = id;
        this.major = major;
    }
    	private String id;
         	private String major;
}
