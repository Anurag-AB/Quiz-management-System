<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome to Quiz Management</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-image: url('/image/wel.png');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
        }

        .container-box {
            background: rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(10px);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.3);
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-width: 350px;
            min-height: 300px;
        }

        h1 {
            font-size: 36px;
            font-weight: bold;
            color: #fff;
            margin-bottom: 15px;
        }

        p {
            color: #f8f9fa;
            font-size: 18px;
            margin-bottom: 20px;
        }

        .btn-custom {
            width: 220px;
            font-size: 18px;
            padding: 10px;
            border-radius: 30px;
            transition: all 0.3s ease-in-out;
        }

        .btn-custom:hover {
            transform: scale(1.05);
        }

        .btn-container {
            display: flex;
            flex-direction: column;
            gap: 15px;
            width: 100%;
            align-items: center;
        }
    </style>
</head>

<body>

    <div class="container-box">
        <h1>Welcome To Quiz Management</h1>
        <p>Test your knowledge with our interactive quiz system!</p>

        <div class="btn-container">
            <a href="login" class="btn btn-primary btn-custom">Login</a>
            <a href="signUp" class="btn btn-success btn-custom">Student Register</a>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
