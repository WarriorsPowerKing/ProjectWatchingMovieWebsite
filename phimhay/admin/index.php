<?php
ob_start();
session_start();
$msg="";
?>
	<?php
	require_once '../connect/db_connect.php';
	if(isset($_POST["login"]))
	{
		$db=new DB_Connect();
		$conn=$db->connect();
		$username = trim($_POST['username']);
		$username = strip_tags($username);
		$username = htmlspecialchars($username);
		
		
		$password = trim($_POST['password']);
		$password = strip_tags($password);
		$password= htmlspecialchars($password);	
		$password = md5($password);

		
	
		$sql="select hovaten from admin where username='$username' and password='$password'";
		$result=$conn->query($sql);
		$count=mysqli_num_rows($result);
		$row=mysqli_fetch_row($result);
		if($count>0)
		{
			$_SESSION['adminName']=$row[0];
			header("Location: /phimhay/admin/theloai.php");
		}
		else
		{
			$msg = 'Wrong username or password';
		}
	}
	?>
<html>
	<head>
	<title>Đăng nhập</title>
	<link rel="stylesheet" href="../css/style.css"/>
	</head>
	<body >
	<div class="wrapper" style="   background: rgb(100,149,137);" >
    <form class="form-signin" method="post"  style="   background: rgb(95,158,160);;">       
      <h2 class="form-signin-heading">Please login</h2>
      <input  type="text"  name="username" placeholder="Tài khoản"  style="margin-top:10px; height:30px; border-radius:4px; width:250px ; margin-left:50px;" /></br>
      <input     type="password" name="password" placeholder="Mật khẩu"   style="margin-top:10px; height:30px; border-radius:4px; width:250px; margin-left:50px;"/>  </br>    
      <button   class="btn btn-lg btn-primary btn-block" type="submit" name="login" style = "  margin-top:20px;height: 30px; width:100px; border-radius:4px; background: #f3b61c; margin-left:50px;">Login</button>   
	  <h4 class = "form-signin-heading"><?php echo $msg; ?></h4>
    </form>
  </div>
	</body>
</html>