<html>
<head>
<title>welcome to Hello World!</title>
</head>
<body>
	<h1>welcome to Hello World!</h1>
	<p>
		It is now
		<%= new java.util.Date() %></p>
	<p>
		You are coming from 
		<%= request.getRemoteAddr()  %></p>
</body>
