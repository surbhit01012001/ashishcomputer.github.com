<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload Video</title>
    <style>
        /* Basic styling for the page */
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            text-align: center;
        }

        /* Styling for the video player */
        video {
            width: 80%;
            max-width: 600px;
            border: 3px solid #333;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }
			 footer {
        text-align: center;
        margin-top: 30px;
        padding: 10px;
        background-color: #004080;
        color: white;
    }
        
    </style>
</head>
<body>
 <jsp:include page="/navfile.jsp" />
    <h1>NOT UPLOAD VIDEO</h1>
    
    <!-- Static Video Display -->
    <video controls>
        <source src="video/video.mp4" type="video/mp4">
        <p>Your browser does not support HTML5 video. Here is a 
        <a href="video/video 1.mp4">link to the video</a> instead.</p>
    </video>
    <footer>
        &copy; 2024 Ashish Computer Institute. All rights reserved.
    </footer>
    
</body>
</html>
