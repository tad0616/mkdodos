<!DOCTYPE html>
<html lang="<{$xoops_langcode}>">
  <head>
    <!--目前$_SESSION['bootstrap']="<{php}>echo $_SESSION['bootstrap'];<{/php}>"; -->
    <!--將目前的資料夾名稱，設定為樣板標籤變數 theme_name-->
    <{assign var=theme_name value=$xoTheme->folderName}>

    <!--載入由使用者設定的各項佈景變數-->
    <{includeq file="$xoops_rootpath/modules/tadtools/themes_common/get_var.tpl"}>
    <{includeq file="$xoops_rootpath/modules/tadtools/themes_common/meta.tpl"}>

    <!-- 網站的標題及標語 -->
    <title><{$xoops_sitename}> - <{$xoops_pagetitle}></title>

    <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/link_css.tpl"}>

    <!-- 給模組套用的樣板標籤 -->
    <{$xoops_module_header}>
    <script src="<{$xoops_url}>/browse.php?Frameworks/jquery/jquery.js" type="text/javascript"></script>
    <script src="<{$xoops_url}>/modules/tadtools/jquery/jquery-migrate.min.js" type="text/javascript"></script>
    <script src="<{$xoops_url}>/modules/tadtools/jquery/ui/jquery-ui.js" type="text/javascript"></script>
    <script src="<{$xoops_url}>/modules/tadtools/fancyBox/lib/jquery.mousewheel-3.0.6.pack.js" type="text/javascript"></script>

    <!-- 局部套用的樣式，如果有載入完整樣式 theme_css.tpl 那就不需要這一部份 -->
    <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/theme_css.tpl"}>
    <link href="<{xoImgUrl css/nav.css}>" rel="stylesheet" media="screen">
    <link href="<{xoImgUrl css/style.css}>" rel="stylesheet" media="screen">


    <style>
      body{
        font-family: <{$font_family}>;
        color: <{$font_color}>;
        font-size: <{$font_size}>;
        background-color: <{$bg_color}>;
      }

      a{
        color:<{$link_color}>;
      }

      a:hover{
        color:<{$hover_color}>;
      }

      <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/theme_css_blocks.tpl"}>

      #header{
        background:url(<{$header_img}>) no-repeat;
        /*background:url(<{xoImgUrl images/header.jpg}>);*/
        padding:10px;
        margin-bottom:20px;
        background-size: cover;
        position: relative;
      }

      #header h1{
        /*color:#2F4F4F;*/
        padding-left:10px;
        color:<{$title_color}>;
        text-shadow: 1px 1px 6px rgba(255,255,255,0.5);
      }

      #header #slogan{
        padding-left:10px;
        margin-bottom: 70px;
        color:<{$subtitle_color}>;
      }

      #header > div > a {
        color:<{$navbar_bg_top}>;
        text-decoration:none;
      }

      #navbar_container{
        width:98%;
        height:40px;
        bottom:30px;
        position: absolute;
        background-color:<{$navbar_bg_top}>;
        opacity:0.5;
        filter:alpha(opacity=50); /* For IE8 and earlier */
      }

      #navbar{
        position: relative;
        z-index:2;
        height:40px;
        bottom:20px;
        opacity:1;
        filter:alpha(opacity=100); /* For IE8 and earlier */
      }

      /* 特定在第一層，連結文字顏色 */
      ul.navigation > li > a{
        color:<{$navbar_color}>;
      }

      /* 選單 li 裡面連結之樣式 */
      ul.navigation li > a{
        display: block;
        padding: 10px 20px;
      }

      ul.navigation > li > a:hover{
        color: <{$navbar_color_hover}>;
      }

      #xoops_theme_content{
        min-height:610px;
      }

      #xoops_theme_footer{
        text-align:center;
        color:<{$footer_color}>;
        background-color:<{$footer_bgcolor}>;
        padding:10px;
        margin-top:20px;
      }


      #gotop {
        display: none;
        position: fixed;
        right: 20px;
        bottom: 20px;
        padding: 10px 15px;
        font-size: 20px;
        background: #777;
        color: white;
        cursor: pointer;
      }

      #footer_content a{
        color: <{$footer_color}>;
      }
    </style>
  </head>
  <body>
    <!-- 頁首 -->

    <div id="header">
      <!-- logo -->
      <{includeq file="$theme_name/tpl/logo.tpl"}>

      <!-- 導覽列 -->
      <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/menu/cssmenu/menu.tpl"}>
    </div>

    <div class="<{if $use_container}>container<{else}>container-fluid<{/if}>">
      <!-- 內容 -->
      <div id="xoops_theme_content">
        <!-- 載入布局 -->
        <div class="row">
          <div class="col-sm-12">
              <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/siteclosed_login.tpl"}>
          </div>
        </div>
      </div>


      <!-- 頁尾 -->
      <div id="xoops_theme_footer">
        <div id="theme_footer">
          <div id="footer_content">
            <{$xoops_footer}>
          </div>
        </div>
      </div>

      <div id="gotop"><{$smarty.const.THEME_MODULE1}> <i class="icon-chevron-up icon-white"></i></div>
    </div>


    <!-- 載入 BootStrap所需的javascript -->
    <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/bootstrap_js.tpl"}>

    <!-- 載入自訂的javascript -->
    <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/my_js.tpl"}>


    <script type="text/javascript">
        $(function() {
          $("ul.navigation > li:has(ul) > a").append('<div class="arrow-bottom"></div>');
          $("ul.navigation > li ul li:has(ul) > a").append('<div class="arrow-right"></div>');

          // http://fundesigner.net/gototop-tutorail/

          $("#gotop").click(function(){
               jQuery("html,body").animate({
                   scrollTop:0
               },1000);
           });
           $(window).scroll(function() {
               if ( $(this).scrollTop() > 300){
                   $('#gotop').fadeIn("fast");
               } else {
                   $('#gotop').stop().fadeOut("fast");
               }
           });
        });
    </script>

    <!-- 是否顯示樣板變數資訊 -->
    <{if $show_var==1}>
      <{includeq file="$xoops_rootpath/modules/tadtools/themes_common/show_var.tpl"}>
    <{/if}>


  </body>
</html>