<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Info</title>
    <style>
        /* Global styles */
        
        .contact-container {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            max-width: 1000px;
            gap: 20px;
            margin: 20px 0;
        }

        .contact-card {
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 20px;
            width: 250px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }

        .contact-card:hover {
            transform: translateY(-5px);
        }

        .contact-card i {
            font-size: 40px;
            color: #007bff;
            margin-bottom: 10px;
        }

        .contact-card h3 {
            font-size: 18px;
            margin: 10px 0;
            color: #333;
        }

        .contact-card p {
            font-size: 14px;
            color: #555;
            margin: 0;
        }

        a {
            text-decoration: none;
            color: #007bff;
        }

        a:hover {
            text-decoration: underline;
        }
        
        footer {
            text-align: center;
            margin-top: auto;
            padding: 15px;
            background-color: #004080;
            color: white;
            width: 100%;
        }
        
        .map-container {
            margin: 20px auto;
            max-width: 800px;
            height: 300px;
            border: 2px solid #ddd;
            border-radius: 8px;
            overflow: hidden;
        }

        iframe {
            width: 100%;
            height: 100%;
            border: none;
        }
    </style>

    <!-- Font Awesome for icons -->
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</head>
<body>
    <jsp:include page="/navfile.jsp" />
    <div class="contact-container">
        <!-- Call Us -->
        <div class="contact-card">
            <i class="fas fa-phone-alt"></i>
            <h3>Call Us</h3>
            <p>+91 9708141167, 7492814736</p>
        </div>

        <!-- Address -->
        <div class="contact-card">
            <i class="fas fa-map-marker-alt"></i>
            <h3>Address</h3>
            <p>Ashish Computer Institute Warisaliganj,<br> Near Mahila College, Warisaliganj Nawada, Bihar, 805130</p>
        </div>

        <!-- Email -->
        <div class="contact-card">
            <i class="fas fa-envelope"></i>
            <h3>Email</h3>
            <p><a href="mailto:ashishcybercafe123@gmail.com">ashishcybercafe123@gmail.com</a></p>
        </div>

        <!-- Website -->
        <div class="contact-card">
            <i class="fas fa-globe"></i>
            <h3>Website</h3>
            <p><a href="http://ashishcomputer.com" target="_blank">www.ashishcomputer.com</a></p>
        </div>
    </div>
    
    <h1>Live Location</h1>
    <div class="map-container">
        <!-- Google Maps Embed Code -->
        <iframe 
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3153.0192473095036!2d144.96328!3d-37.814563!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad642af0f11fd81%3A0x5045675218cce6e0!2sMelbourne%20VIC%2C%20Australia!5e0!3m2!1sen!2sin!4v1610966985890!5m2!1sen!2sin" 
            allowfullscreen="" 
            loading="lazy">
        </iframe>
    </div>

    <footer>
        &copy; 2024 Ashish Computer Institute. All rights reserved.
    </footer>
</body>
</html>
