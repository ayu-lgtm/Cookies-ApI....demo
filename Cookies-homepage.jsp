<html>
<body>
	<h3>Training Portal</h3>
	<%
	    //the default .....if there are no cookies
		String favlang ="Java";
	
	    //get the cookies from the browser request
	    Cookie[] thecookie=request.getCookies();
	    
	    //find our favorite language cookie
	    
	    if(thecookie!=null){
	    	for(Cookie e:thecookie)
	    	 if("myweb.favlang".equals(e.getName())){
	    		 favlang=e.getValue();
	    		 break;
	    	 }
	    }
	    
	    
	%>
	
	<!-- now show the personalized page -->
	<h4>New Books for <%=favlang %></h4>
	<ul>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
	</ul>
	<h4>Latest News report for <%=favlang %></h4>
	<ul>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
	</ul>
	<h4>Hot jobs for <%=favlang %></h4>
	<ul>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
	</ul>
	
	<hr>
	<a href="cookies-personalize-form.html">Personalize this page</a>
</body>
</html>