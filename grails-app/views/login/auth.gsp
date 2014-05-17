<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>Login Page</title>
    <meta name="layout" content="main" />
    <r:require modules="core"/>
</head>
<body>
<div class="wrapper" id="wrapper">
    <div class="student-content-box">
        <div class=" student-fset">
            <form action='/eeducation/j_spring_security_check' method='POST' id='loginForm'  autocomplete='off'>
              
                    <div class="col-1 span-1">
                        <input type="text" name='j_username' id='username' placeholder="Login Name" required="true"/>

                        <input type='password' name='j_password' id='password' placeholder="Login Password" required="true"/>

                    </div>
					<p id="remember_me_holder">
						<input type='checkbox'  name='_spring_security_remember_me' id='remember_me' />
						<label for='remember_me'>Remember me</label>
					</p>
                    
                    <input type="submit" class="next-button" id="login-submit"  value="Submit"/>

 			  </form>
            </div>
        </div>
    </div>
</body>
</html>