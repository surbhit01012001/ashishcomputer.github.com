<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library Seat Appointment</title>
    <link rel="stylesheet" href="styles.css">
</head>

<style>
	* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.container {
    background-color: white;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    width: 400px;
}

h1 {
    text-align: center;
    margin-bottom: 20px;
}

.form-group {
    margin-bottom: 15px;
}

label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
}

input[type="text"],
input[type="date"],
input[type="time"],
select {
    width: 100%;
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

button.btn {
    width: 100%;
    padding: 10px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

button.btn:hover {
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

    <div class="container">
    
        <h1>Library Seat Appointment</h1>
        <form action="setAppoint" method="POST">
            <div class="form-group">
                <label for="name">Full Name:</label>
                <input type="text" id="name" name="name" required placeholder="Enter your full name">
            </div>
            <div class="form-group">
                <label for="seat">Select Seat:</label>
                <select id="seat" name="seat" required>
                    <option value="">Select a seat</option>
                    <option value="seat1">Seat 1</option>
                    <option value="seat2">Seat 2</option>
                    <option value="seat3">Seat 3</option>
                    <option value="seat4">Seat 4</option>
                    <option value="seat1">Seat 5</option>
                    <option value="seat2">Seat 6</option>
                    <option value="seat3">Seat 7</option>
                    <option value="seat4">Seat 8</option>
                    <option value="seat1">Seat 9</option>
                    <option value="seat2">Seat 10</option>
                    <option value="seat3">Seat 11</option>
                    <option value="seat4">Seat 12</option>
                    <option value="seat1">Seat 13</option>
                    <option value="seat2">Seat 14</option>
                    <option value="seat3">Seat 15</option>
                    <option value="seat4">Seat 16</option>
                    <option value="seat1">Seat 17</option>
                    <option value="seat2">Seat 18</option>
                    <option value="seat3">Seat 19</option>
                    <option value="seat4">Seat 20</option>
                </select>
            </div>
            <div class="form-group">
                <label for="appointment_date">Select Date:</label>
                <input type="date" id="appointment_date" name="appointment_date" required>
            </div>
            <div class="form-group">
                <label for="appointment_time">Start time:</label>
                <input type="time" id="appointment_time" name="appointment_start_time" required>
            </div>
            
            <div class="form-group">
                <label for="appointment_time">Last time:</label>
                <input type="time" id="appointment_time" name="appointment_last_time" required>
            </div>
            <div class="form-group">
                <button type="submit" class="btn">Book Appointment</button>
            </div>
        </form>
        <footer>
        &copy; 2024 Ashish Computer Institute. All rights reserved.
    </footer>
    </div>
</body>
</html>
