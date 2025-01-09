<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Partner Registration Form</title>
    <link rel="stylesheet" href="styles.css">
</head>
<style>

body {
    font-family: Arial, sans-serif;
    background-color: #f5f5f5;
    margin: 0;
    padding: 0;
	}

.form-container {
    width: 50%;
    margin: 20px auto;
    background: #fff;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    padding: 20px;
}

h1 {
    text-align: center;
    color: #333;
}

form {
    display: flex;
    flex-wrap: wrap;
    gap: 15px;
}

.form-row {
    width: 100%;
}

label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
}

input, select, textarea {
    width: 100%;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 5px;
    box-sizing: border-box;
}

textarea {
    resize: none;
    height: 60px;
}

.gender-options {
    display: flex;
    gap: 10px;
    align-items: center;
}

.gender-options label {
    font-weight: normal;
}


button.submit-button {
    width: 100%;
    padding: 10px;
    background: linear-gradient(to right, #ff7e5f, #feb47b);
    border: none;
    border-radius: 5px;
    color: #fff;
    font-size: 16px;
    cursor: pointer;
}

button.submit-button:hover {
    background: linear-gradient(to right, #feb47b, #ff7e5f);
}

span {
    color: red;
}

</style>
<body>
<jsp:include page="/navfile.jsp" />
 <form action="reg_1" method="post">
    <div class="form-container">
        <h1>Center Registration Form</h1>
       
            <div class="form-row">
                <label for="institute-name">Institute Name <span>*</span></label>
                <input type="text" id="institute-name" name="institute_name" required>
            </div>

            <div class="form-row">
                <label for="upload-logo">Upload Institute Logo <span>*</span></label>
                <input type="file" id="upload-logo" >
            </div>
            <div class="form-row">
                <label for="owner-name">Institute Owner Name <span>*</span></label>
                <input type="text" id="owner-name" name="owner_name" required>
            </div>
            <div class="form-row">
                <label for="upload-photo">Upload Passport Size Photo <span>*</span></label>
                <input type="file" id="upload-photo" >
            </div>
           <div class="form-row">
	                <label>Gender <span>*</span></label>
				     
				    
				    <select id="gender" name="gender" required>
			        <option value="" disabled selected>-- Select Gender --</option>
			        <option value="male">Male</option>
			        <option value="female">Female</option>
			    </select>
				</div>

           		
            <div class="form-row">
                <label for="phone-number">Phone Number <span>*</span></label>
                <input type="text" id="phone-number" name="phone_number" required>
            </div>
            <div class="form-row">
                <label for="email-id">Email ID <span>*</span></label>
                <input type="email" id="email-id"  name="email_id"required>
            </div>
            <div class="form-row">
                <label for="residence-front">Upload Residence Proof  <span>*</span></label>
                <input type="file" id="residence-front" >
            </div>
            
            <div class="form-row">
                <label for="address">Address <span>*</span></label>
                <textarea id="address" name="address" required></textarea>
            </div>
            <div class="form-row">
                <label for="pin-code">Pin Code <span>*</span></label>
                <input type="text" id="pin-code" name="pin_code" required>
            </div>
            <div class="form-row">
                <label for="state"> State <span>*</span></label>
               
                   <input type="text" id="state"  name="state"required>
               
            </div>
            <div class="form-row">
                <label for="district"> District <span>*</span></label>
               
                     <input type="text" id="district" name="district"required>
               
            </div>
          
            
            <button type="submit" class="submit-button">Register Now</button>
              </div>
        </form>
        <c:if test="${not empty resultMessage}">
        <div style="color: green;">
            ${resultMessage}
        </div>
    </c:if>
  
</body>
</html>
