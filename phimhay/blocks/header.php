<?php
require_once "connect/db_connect.php";
$db=new DB_Connect();
$conn=$db->connect();
?>
<div id="fb-root"></div>
<script>(function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.2';
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
<div id="header">
    <div class="container">
        <div class="fixed">
            <i class="menu-trigger"></i>
            <a id="logo" href="/phimhay" title="Xem phim online miễn phí">
                <img src="/phimhay/assets/images/logo2.jpg">
                <span>Phim Hay</span>
            </a>
        </div>
        <div class="search-wapper">
            <form method="GET" action="/phimhay/tim-kiem.php" class="style2" id="search">
                <input type="text" class="keyword" name="tukhoa"
                       placeholder="Tìm Kiếm Theo : Tên Phim, Đạo Diễn, Diễn Viên" autocomplete="off">
                <input type="submit" class="submit" value="Tìm" title="Bấm nhẹ">
            </form>
        </div>

            <?php if (!isset($_SESSION['username'])) { ?>
        <div class="user">
            <a rel="nofollow" href="/phimhay/login.php"
               class="btn btn-login">Đăng nhập</a>
            <a rel="nofollow" href="/phimhay/register.php"
               class="register">Chưa có tài khoản ?<span>Đăng ký ngay<i></i></span></a>
        </div>
            <?php } else { ?>
                <div class="request-film">
                    <a rel="nofollow" href="/phimhay/logout.php"><span style="color:#D2990B;font-size: 16px">Thoát</span></a>
                </div>
                <div class="request-film">
                    <a rel="nofollow" href="#"><span style="color:#D2990B;font-size: 16px; margin-right: 5px"><i></i> <?php echo $_SESSION['username'] ?></span></a>
                </div>
            <?php } ?>

    </div>
</div>
