<{if $logo_img}>
  <div>
    <a href="<{xoAppUrl}>"><img src="<{$logo_img}>" alt="<{$xoops_sitename}>" style="z-index:10;"></a>
  </div>
<{else}>
  <div><a href="<{xoAppUrl index.php}>"><div class="h1"><{$xoops_sitename}></div></a></div>
  <div id="slogan">~<{$xoops_slogan}></div>
<{/if}>