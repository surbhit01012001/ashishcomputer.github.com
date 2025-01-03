<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration Form</title>
    <link rel="stylesheet" href="styles.css">
</head>
	<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f9f9f9;
    }

    .form-container {
        max-width: 600px;
        margin: 50px auto;
        padding: 20px;
        background: #fff;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    h1 {
        text-align: center;
        color: #333;
    }

    .form-group {
        margin-bottom: 15px;
    }

    label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
    }

    input, select, button {
        width: 100%;
        padding: 10px;
        font-size: 16px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    button {
        background-color: #4CAF50;
        color: white;
        cursor: pointer;
        border: none;
    }

    button:hover {
        background-color: #45a049;
    }
     footer {
        text-align: center;
        margin-top: 30px;
        padding: 10px;
        background-color: #004080;
        color: white;
    }
</style>
<body>
  <jsp:include page="/navfile.jsp" />
	<h1>Student Registration Form</h1>
<div>
    <form action="student" method="POST" >
        <div class="form-container">
            

            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" placeholder="Enter your name" required>
            </div>
            <div class="form-group">
                <label for="guardian_name">Guardian Name:</label>
                <input type="text" id="guardian_name" name="guardian_name" placeholder="Enter guardian's name" required>
            </div>
            <div class="form-group">
                <label for="email">Email Address:</label>
                <input type="email" id="email" name="email" placeholder="Enter your email" required>
            </div>
            <div class="form-group">
                <label for="phone">Phone Number:</label>
                <input type="text" id="phone" name="phone" placeholder="Enter your phone number"  required>
            </div>
            <div class="form-group">
                <label for="alt_phone">Alternate Phone Number:</label>
                <input type="text" id="alt_phone" name="alt_phone" placeholder="Enter alternate phone number">
            </div>
             <div class="form-group">
                <label for="gender">Gender:</label>
                <select id="gender" name="gender" required>
                    <option value="">- Select Gender -</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                     <option value="Other">other</option>
                </select>
            </div>
            <div class="form-group">
                <label for="dob">Date of Birth:</label>
                <input type="date" id="dob" name="dob" required>
            </div>
            <div class="form-group">
                <label for="address">Address:</label>
                <input type="text" id="address" name="address" placeholder="Enter your address" required>
            </div>
            <div class="form-group">
               <label for="state">State:</label>
                <input type="text" id="state" name="state" placeholder="Enter your state" required>
               
            </div>
            <div class="form-group">
                <label for="district">District:</label>
                <input type="text" id="district" name="district" placeholder="Enter your district" required>
            </div>
            <div class="form-group">
                <label for="pincode">Pincode:</label>
                <input type="text" id="pincode" name="pincode" placeholder="Enter pincode"  required>
            </div>
            <div class="form-group">
                <label for="last_school">Last School/College Attended:</label>
                <input type="text" id="last_school" name="last_school" placeholder="Enter last school/college" required>
            </div>
            <div class="form-group">
                <label for="qualification">Qualification:</label>
                <select id="qualification" name="qualification" required>
                    <option value="">- Select Qualification -</option>
                    <option value="highschool">High School</option>
                    <option value="intermediate">Intermediate</option>
                    <option value="graduate">Graduate</option>
                    <option value="other">Other</option>
                </select>
            </div>
           
            <div class="form-group">
                <label for="course">Select Course:</label>
                <select id="course" name="course" required>
                    <option value="">- Select Course -</option>
                    <option value="adca">PGDCA</option>
                    <option value="dca">DCA</option>
                    <option value="adca">ADCA</option>
                    <option value="tally">TALLY</option>
                    <option value="dtp">DTP</option>
                    <option value="ccc">CCC</option>
                     <option value="c++">C++</option>
                    <option value="html">HTML/CSS</option>
                    <option value="developer">FULL STACK DEVELOPER</option>
                     <option value="jsp">JSP</option>
                    <option value="javascript">JAVA SCRIPT</option>
                    <option value="php">PHP</option>
                </select>
            </div>
            <div class="form-group">
                <label for="start_date">Batch Start Date:</label>
                <input type="date" id="start_date" name="start_date" required>
            </div>
            
            <div class="form-group">
                <label for="student_image">Student Image:</label>
                <input type="file" id="student_image" name="student_image" accept="image/*">
            </div>
            <div class="form-group">
                <button type="submit" class="btn">Submit</button>
            </div>
            
        </div>
    </form>
</div>
	 <footer>
        &copy; 2024 Ashish Computer Institute. All rights reserved.
    </footer>


</body>
</html>
