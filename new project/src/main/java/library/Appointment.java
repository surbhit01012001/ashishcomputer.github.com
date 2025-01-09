package library;

import java.util.Date;

public class Appointment {
    private String fullName;
    private String seat;
    private String appointmentDate;
    private String startTime;
    private String lastTime;

    // Default constructor
    public Appointment() {}

    // Constructor to initialize an appointment
    public Appointment(String fullName, String seat, String appointmentDate, String startTime, String lastTime) {
        this.fullName = fullName;
        this.seat = seat;
        this.appointmentDate = appointmentDate;
        this.startTime = startTime;
        this.lastTime = lastTime;
    }

    // Getters and Setters
    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getSeat() {
        return seat;
    }

    public void setSeat(String seat) {
        this.seat = seat;
    }

    public String getAppointmentDate() {
        return appointmentDate;
    }

    public void setAppointmentDate(String appointmentDate) {
        this.appointmentDate = appointmentDate;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getLastTime() {
        return lastTime;
    }

    public void setLastTime(String lastTime) {
        this.lastTime = lastTime;
    }
}
