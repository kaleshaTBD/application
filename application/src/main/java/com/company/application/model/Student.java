package com.company.application.model;


import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Student implements Serializable{
    
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    
    private String mf11_compCode;
   
    private String mf11_compCodeHRIS;

    private String mf11_compName;
    
    private String mf11_compAbbrName;
    
    private String mf11_compRegNo;
    private String mf11_compLogo ;
    private String Mf11_compActiveDate;
    private Boolean mf11_isActive;
    private String mf11_createdOn;
    private String mf11_createdBy;
    private String mf11_lastModifiedOn ;
    private String mf11_deactivatedBy;
    private String mf11_lastModifiedBy;
   	private String mf11_deactivatedOn;
    private String mf11_reactivatedBye;
    private String mf11_reactivatedOn;
    
 



	public Student(String mf11_compCode, String mf11_compCodeHRIS, String mf11_compName, String mf11_compAbbrName,
			String mf11_compRegNo, String mf11_compLogo, String mf11_compActiveDate, Boolean mf11_isActive,
			String mf11_createdOn, String mf11_createdBy, String mf11_lastModifiedOn, String mf11_deactivatedBy,
			String mf11_lastModifiedBy, String mf11_deactivatedOn, String mf11_reactivatedBye, String mf11_reactivatedOn) {
		super();
		this.mf11_compCode = mf11_compCode;
		this.mf11_compCodeHRIS = mf11_compCodeHRIS;
		this.mf11_compName = mf11_compName;
		this.mf11_compAbbrName = mf11_compAbbrName;
		this.mf11_compRegNo = mf11_compRegNo;
		this.mf11_compLogo = mf11_compLogo;
		Mf11_compActiveDate = mf11_compActiveDate;
		this.mf11_isActive = mf11_isActive;
		this.mf11_createdOn = mf11_createdOn;
		this.mf11_createdBy = mf11_createdBy;
		this.mf11_lastModifiedOn = mf11_lastModifiedOn;
		this.mf11_deactivatedBy = mf11_deactivatedBy;
		this.mf11_lastModifiedBy = mf11_lastModifiedBy;
		this.mf11_deactivatedOn = mf11_deactivatedOn;
		this.mf11_reactivatedBye = mf11_reactivatedBye;
		this.mf11_reactivatedOn = mf11_reactivatedOn;
	}



	public String getMf11_compCode() {
		return mf11_compCode;
	}



	public long getId() {
		return id;
	}



	public void setId(long id) {
		this.id = id;
	}


	 public String getMf11_lastModifiedBy() {
			return mf11_lastModifiedBy;
		}



		public void setMf11_lastModifiedBy(String mf11_lastModifiedBy) {
			this.mf11_lastModifiedBy = mf11_lastModifiedBy;
		}

	public void setMf11_compCode(String mf11_compCode) {
		this.mf11_compCode = mf11_compCode;
	}



	public String getMf11_compCodeHRIS() {
		return mf11_compCodeHRIS;
	}



	public void setMf11_compCodeHRIS(String mf11_compCodeHRIS) {
		this.mf11_compCodeHRIS = mf11_compCodeHRIS;
	}



	public String getMf11_compName() {
		return mf11_compName;
	}



	public void setMf11_compName(String mf11_compName) {
		this.mf11_compName = mf11_compName;
	}



	public String getMf11_compAbbrName() {
		return mf11_compAbbrName;
	}



	public void setMf11_compAbbrName(String mf11_compAbbrName) {
		this.mf11_compAbbrName = mf11_compAbbrName;
	}



	public String getMf11_compRegNo() {
		return mf11_compRegNo;
	}



	public void setMf11_compRegNo(String mf11_compRegNo) {
		this.mf11_compRegNo = mf11_compRegNo;
	}



	public String getMf11_compLogo() {
		return mf11_compLogo;
	}



	public void setMf11_compLogo(String mf11_compLogo) {
		this.mf11_compLogo = mf11_compLogo;
	}



	public String getMf11_compActiveDate() {
		return Mf11_compActiveDate;
	}



	public void setMf11_compActiveDate(String mf11_compActiveDate) {
		Mf11_compActiveDate = mf11_compActiveDate;
	}



	public Boolean getMf11_isActive() {
		return mf11_isActive;
	}



	public void setMf11_isActive(Boolean mf11_isActive) {
		this.mf11_isActive = mf11_isActive;
	}



	public String getMf11_createdOn() {
		return mf11_createdOn;
	}



	public void setMf11_createdOn(String mf11_createdOn) {
		this.mf11_createdOn = mf11_createdOn;
	}



	public String getMf11_createdBy() {
		return mf11_createdBy;
	}



	public void setMf11_createdBy(String mf11_createdBy) {
		this.mf11_createdBy = mf11_createdBy;
	}



	public String getMf11_lastModifiedOn() {
		return mf11_lastModifiedOn;
	}



	public void setMf11_lastModifiedOn(String mf11_lastModifiedOn) {
		this.mf11_lastModifiedOn = mf11_lastModifiedOn;
	}



	public String getMf11_deactivatedBy() {
		return mf11_deactivatedBy;
	}



	public void setMf11_deactivatedBy(String mf11_deactivatedBy) {
		this.mf11_deactivatedBy = mf11_deactivatedBy;
	}



	public String getMf11_deactivatedOn() {
		return mf11_deactivatedOn;
	}



	public void setMf11_deactivatedOn(String mf11_deactivatedOn) {
		this.mf11_deactivatedOn = mf11_deactivatedOn;
	}



	public String getMf11_reactivatedBye() {
		return mf11_reactivatedBye;
	}



	public void setMf11_reactivatedBye(String mf11_reactivatedBye) {
		this.mf11_reactivatedBye = mf11_reactivatedBye;
	}



	public String getMf11_reactivatedOn() {
		return mf11_reactivatedOn;
	}



	public void setMf11_reactivatedOn(String mf11_reactivatedOn) {
		this.mf11_reactivatedOn = mf11_reactivatedOn;
	}



	public Student() {}

   
}