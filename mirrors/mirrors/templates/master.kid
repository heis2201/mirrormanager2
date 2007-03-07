<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<?python import sitetemplate ?>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:py="http://purl.org/kid/ns#" py:extends="sitetemplate">

<head py:match="item.tag=='{http://www.w3.org/1999/xhtml}head'" py:attrs="item.items()">
    <meta content="text/html; charset=UTF-8" http-equiv="content-type" py:replace="''"/>
    <title py:replace="''">Your title goes here</title>
    <meta py:replace="item[:]"/>
    <style type="text/css">
        #pageLogin
        {
            font-size: 10px;
            font-family: verdana;
            text-align: right;
        }
    </style>
    <style type="text/css" media="screen">
@import "${tg.url('/static/css/style.css')}";
</style>
</head>

<body py:match="item.tag=='{http://www.w3.org/1999/xhtml}body'" py:attrs="item.items()">

	
	
	<div class="page_body">
	<div id="header"></div>
	
	<div id="menu">
		<div id="welcome">
		    <span py:if="tg.config('identity.on',False) and not 'logging_in' in locals()">
		        <span py:if="not tg.identity.anonymous">
		            Welcome ${tg.identity.user.display_name}.
		        </span>
		    </span>
		</div>
			
    	<div id="menu_links" >
	        <a href="${tg.url('/')}">Main</a>
		    <span py:if="tg.config('identity.on',False) and not 'logging_in' in locals()">
		        <span py:if="tg.identity.anonymous">
		            <a href="${tg.url('/login')}">Login</a>
		        </span>
		        <span py:if="not tg.identity.anonymous">
		            <a href="${tg.url('/logout')}">Logout</a>
		        </span>
		    </span>	


		</div>
		

	</div>
	
    <div py:if="tg_flash" class="notice">
    	<div py:if="not tg_flash.startswith('Error:')" py:replace="tg_flash" />
    	<div py:if="tg_flash.startswith('Error:')" py:content="tg_flash" class="error_flash">
    	
    	</div>
    </div>

    <div id="main_content" py:content="[item.text]+item[:]"/>

	<!-- End of main_content -->
<script>
	elements = getElementsByTagAndClassName("a", "delete_link");

	connect_func = function(element) {
		connect(element, 'onclick', function (event) { if (!confirm("Are you sure?")) event.stop(); });
	}

	map(connect_func, elements);
</script>

		<div id="footer"> <img src="/static/images/under_the_hood_blue.png" /></div>
	</div>
</body>

</html>
