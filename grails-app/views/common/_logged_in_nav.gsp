		<nav>
		
		    <div class="top-menu">
		        <div class="push-menu-left">
		            <ul id="menu" >
		                <li><a href="/dashboard">Home</a></li>
		                <li><a href="/student/add">Student Management</a></li>
		                <li><a href="#">Contact us</a></li>
		                <sec:ifAnyGranted roles="ROLE_SUPER_USER">
		                	<li><a href="/institute">Institute</a></li>
		                	<li><a href="/adminUser">AdminUser</a></li>
		                </sec:ifAnyGranted>
		                <sec:ifAnyGranted roles="ROLE_ADMIN">
			                <li><a href="/course">Courses</a></li>
			                <li><a href="/batch">Batches</a></li>
		                </sec:ifAnyGranted>
		                
		            </ul>
		        </div>
		    </div>
		</nav>
	
