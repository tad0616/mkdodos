<?php

//外框是否套用 container
$i++;
$theme_config[$i]['name']    = "use_container";
$theme_config[$i]['text']    = TF_USE_CONTAINER;
$theme_config[$i]['desc']    = TF_USE_CONTAINER_DESC;
$theme_config[$i]['type']    = "yesno";
$theme_config[$i]['default'] = "0";

//字型設定
$i++;
$theme_config[$i]['name']    = "font_family";
$theme_config[$i]['text']    = TF_FONT_FAMILY;
$theme_config[$i]['desc']    = TF_FONT_FAMILY_DESC;
$theme_config[$i]['type']    = "text";
$theme_config[$i]['default'] = constant('TF_FONT_FAMILY_DEFAULT');

// 頁首背景圖
$theme_config[] = array(
    "name"    => "header_img",
    "text"    => TF_HEADER_IMG,
    "desc"    => TF_HEADER_IMG_DESC,
    "type"    => "file",
    "default" => XOOPS_URL . "/themes/mkdodos/images/header.jpg",
);

// 標題文字顏色
$theme_config[] = array(
    "name"    => "title_color",
    "text"    => TF_TITLE_COLOR,
    "desc"    => TF_TITLE_COLOR_DESC,
    "type"    => "color",
    "default" => "green",
);

// 副標題文字顏色
$theme_config[] = array(
    "name"    => "subtitle_color",
    "text"    => TF_SUBTITLE_COLOR,
    "desc"    => TF_SUBTITLE_COLOR_DESC,
    "type"    => "color",
    "default" => "#FFFFFF",
);

// 頁尾文字顏色
$theme_config[] = array(
    "name"    => "footer_color",
    "text"    => TF_FOOTER_COLOR,
    "desc"    => TF_FOOTER_COLOR_DESC,
    "type"    => "color",
    "default" => "#FFF",
);

// 頁尾背景色
$theme_config[] = array(
    "name"    => "footer_bgcolor",
    "text"    => TF_FOOTER_BGCOLOR,
    "desc"    => TF_FOOTER_BGCOLOR_DESC,
    "type"    => "color",
    "default" => "#34A343",
);
