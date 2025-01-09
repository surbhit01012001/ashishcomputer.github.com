<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Diploma Courses</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
            color: #333;
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            margin-top: 20px;
            margin-bottom: 20px;
        }

        .course-container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 20px;
            padding: 20px;
        }

        .course-card {
            background: white;
            border: 1px solid #ddd;
            border-radius: 8px;
            width: 300px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .course-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .course-header {
            font-size: 20px;
            font-weight: bold;
            color: white;
            background-color: #2c3e50;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 15px;
        }

        .course-card h2 {
            font-size: 18px;
            color: #e74c3c;
            margin-bottom: 10px;
        }

        .course-card p {
            font-size: 14px;
            color: #555;
            margin-bottom: 15px;
        }

        .course-card ul {
            list-style: none;
            padding: 0;
            margin: 0 0 15px 0;
            text-align: left;
        }

        .course-card ul li {
            color: #333;
            margin: 5px 0;
            padding-left: 15px;
            position: relative;
        }

        .course-card ul li::before {
            content: "•";
            position: absolute;
            left: 0;
            color: #e74c3c;
        }

        button {
            background-color: #2c3e50;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #e74c3c;
        }

        footer {
            text-align: center;
            padding: 15px;
            background-color: #004080;
            color: white;
            margin-top: 30px;
            font-size: 14px;
        }

        @media (max-width: 768px) {
            .course-card {
                width: 100%;
            }
        }

        @media (max-width: 480px) {
            .course-header {
                font-size: 16px;
            }

            button {
                font-size: 12px;
                padding: 8px 15px;
            }
        }
    </style>
</head>
<body>
    <jsp:include page="/navfile.jsp" />
    <h2>DIPLOMA COURSES</h2>

    <div class="course-container">
        <div class="course-card">
            <div class="course-header">ADCA</div>
            <h2>Diploma in Computer Application</h2>
            <p><strong>Duration:</strong> 12 months</p>
            <ul>
                <li>Fundamental Of Computer</li>
                <li>MS-OFFICE 2019</li>
                <li>INTERNET</li>
                <li>Adobe Photoshop</li>
                <li>PageMaker</li>
                <li>Corel Draw</li>
                <li>Tally</li>
                <li>TYPING (ENGLISH & HINDI)</li>
                <li>Project</li>
            </ul>
            <button>Read more</button>
        </div>

        <div class="course-card">
            <div class="course-header">DCA</div>
            <h2>Diploma in Computer Application</h2>
            <p><strong>Duration:</strong> 6 months</p>
            <ul>
                <li>COMPUTER FUNDAMENTAL</li>
                <li>MS-OFFICE 2019</li>
                <li>INTERNET</li>
                <li>TYPING (ENGLISH & HINDI)</li>
                <li>Project</li>
            </ul>
            <button>Read more</button>
        </div>

        <div class="course-card">
            <div class="course-header">DIT</div>
            <h2>Diploma in Information Technology Application</h2>
            <p><strong>Duration:</strong> 6 months</p>
            <ul>
                <li>Computer Fundamental</li>
                <li>MS-OFFICE 2019</li>
                <li>INTERNET</li>
                <li>Algorithm and Flowchart</li>
                <li>Visual Basic</li>
                <li>Project</li>
            </ul>
            <button>Read more</button>
        </div>

        <div class="course-card">
            <div class="course-header">DDP</div>
            <h2>Diploma in Desktop Publishing</h2>
            <p><strong>Duration:</strong> 6 months</p>
            <ul>
                <li>PageMaker</li>
                <li>Adobe Photoshop</li>
                <li>Corel Draw</li>
                <li>Printing and Scanning</li>
                <li>Project</li>
            </ul>
            <button>Read more</button>
        </div>

        <div class="course-card">
            <div class="course-header">DFA</div>
            <h2>Diploma in Financial Accounting</h2>
            <p><strong>Duration:</strong> 6 months</p>
            <ul>
                <li>Manual Accounting</li>
                <li>Computerized Accounting</li>
                <li>Company Accounts & Financial Statement Analysis</li>
                <li>E-filing of Income Tax and GST</li>
                <li>Accounting through Tally</li>
                <li>Project Work</li>
            </ul>
            <button>Read more</button>
        </div>

        <div class="course-card">
            <div class="course-header">DBCS</div>
            <h2>Diploma in Basic Computer Skills</h2>
            <p><strong>Duration:</strong> 6 months</p>
            <ul>
                <li>Fundamentals of Computer</li>
                <li>Windows (OS) & Internet</li>
                <li>MS Office (Word, Excel, PowerPoint)</li>
                <li>Computer Lab Practical/Project</li>
                <li>TYPING</li>
            </ul>
            <button>Read more</button>
        </div>

        <div class="course-card">
            <div class="course-header">CCA</div>
            <h2>Certificate Course in Architecture</h2>
            <p><strong>Duration:</strong> 6 months</p>
            <ul>
                <li>2D CAD</li>
                <li>3D CAD</li>
                <li>3D Modeling</li>
            </ul>
            <button>Read more</button>
        </div>
    </div>

    <footer>
        &copy; 2024 Ashish Computer Institute. All rights reserved.
    </footer>

</body>
</html>
