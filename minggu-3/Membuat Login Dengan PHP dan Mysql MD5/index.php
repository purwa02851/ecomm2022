<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Membuat Form Login</title>
</head>
<body>
<br/>
<br/>
<br/>
<div class="login">
<br/>
<form action="login.php" method="post" onSubmit="return validasi()">
<div>
<label>Username:</label>
<input type="text" name="username" id="username" />
</div>
<div>
<label>Password:</label>
<input type="password" name="password" id="password" />
</div>
<div>
<input type="submit" value="Login" class="tombol">
</div>
</form>
</div>
</body>

<script type="text/javascript">
function validasi() {
var username = document.getElementById("username").value;
var password = document.getElementById("password").value;
if (username != "" && password!="") {
return true;
}else{
alert('Username dan Password harus di isi !');
return false;
}
}
</script>

</html>