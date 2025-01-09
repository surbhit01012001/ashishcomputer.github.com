package Enquary;

import java.security.Timestamp;

public class Enquiry {
	
	private int id;
    private String name;
    private String email;
    public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Timestamp getSubmissionDate() {
		return submissionDate;
	}
	public void setSubmissionDate(Timestamp timestamp) {
		this.submissionDate = timestamp;
	}
	private String phone;
    private String message;
    private Timestamp submissionDate;
	public void setSubmissionDate(java.sql.Timestamp timestamp) {
		// TODO Auto-generated method stub
		
	}
}
