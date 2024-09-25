<!DOCTYPE html>
<html>
<head>
    <title>PHP Form</title>
</head>
<body>
    <h2>Submit your name</h2>
    <form method="POST" action="submit.php">
        <input type="text" name="username" placeholder="Enter your name" required>
        <input type="submit" value="Submit">
    </form>
    <br>
    <a href="view.php">View Submitted Data</a>
</body>
</html>
