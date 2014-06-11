<html>
	<head>
	
	    <meta charset="UTF-8">
	    <title><g:layoutTitle default="E education"/></title>
	    <r:layoutResources />
	    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'home.css')}" type="text/css">
   		<link rel="stylesheet"  href="${resource(dir: 'css', file: 'superDashboard.css')}" type="text/css">
    	<link rel="stylesheet" href="${resource(dir: 'css', file: 'studentInfo.css')}" type="text/css">
    	<link rel="stylesheet" href="${resource(dir: 'css', file: 'scaffold.css')}" type="text/css">
    	    	<link rel="stylesheet" href="${resource(dir: 'css', file: 'login.css')}" type="text/css">
    	
		
		 <script src="${resource(dir: 'js', file: 'jquery-2.1.0.js')}"> </script>
	    
		<g:layoutHead/>
		
	    <!-- pingdom -->
			<script>
			var _prum = [['id', '5367f80eabe53d7072366c8c'],
			             ['mark', 'firstbyte', (new Date()).getTime()]];
			(function() {
			    var s = document.getElementsByTagName('script')[0]
			      , p = document.createElement('script');
			    p.async = 'async';
			    p.src = '//rum-static.pingdom.net/prum.min.js';
			    s.parentNode.insertBefore(p, s);
			})();
			</script> 
	<!--  pingdom  --> 
	
			<script>
		        $(document).ready(function(){
		    $(".slicknav_icon").click(function() {
		
		    $("#menu").slideToggle();
		
		    });
		        });
		    </script>
		
	</head>
	<body>

		<div class="wrapper" id="wrapper">
		    <div class="orange-panel">
		        <div class="top-box">
		            <div class="white-panel">
		
		                <div id="header">
		
		                        <span class="slicknav_icon">
		                         <span class="slicknav_icon-bar"></span>
		                         <span class="slicknav_icon-bar"></span>
		                         <span class="slicknav_icon-bar"></span></span>
		                </div>
		
		
		                <div class="logo">
		                    e-Education
		                </div>
		
		                <div class="search">
							<sec:ifLoggedIn>
			                    <form name="logout" action="/eeducation/j_spring_security_logout" method="get">
			                        <input type="submit" id="search-button" value="logout">
			
			                    </form>
								
							</sec:ifLoggedIn>
							<sec:ifNotLoggedIn>
			                    <g:form name="dashboard" url="[controller:'dashboard']">
			                        <input type="submit" id="search-button" value="login">
			                    </g:form>
		                    </sec:ifNotLoggedIn>
		
		                </div>
		
		            </div>
		        </div>
		    </div>
		
		</div>
		<div class="clear"></div>
		<sec:ifLoggedIn>
			<g:render template="/common/logged_in_nav" />
		</sec:ifLoggedIn>
		<sec:ifNotLoggedIn>
			<g:render template="/common/nav" />
		</sec:ifNotLoggedIn>
		<div class="clear"></div>
	
		<g:layoutBody/>
		<div class="clear"></div>
		<div class="footer"> copyright@Horizon Tech Ltd.</div>
		<r:layoutResources />
	</body>
</html>
