<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored = "false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fetch the Record from the Database</title>
<style>
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

body {
	background-color: #f8fff0;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	align-content: center;
	height: 100%;
}

.main{
	background-color: #6592885b;
	display: block;
	margin: 25px;
	padding: 11px;
	border-radius: 20px;
	text-align: center;
}
.main h1{
	text-align: center;
	padding: 20px;
}
.search{
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 20px;
}
input {
	background-color: #fafafa;
	width: 244px;
	height: 40px;
	color: #376c8b;
	padding: 8px;
	border-radius: 10px;
	border: none;
}
button {
    background-color: #4bccae;
    width: 80px;
    height: 44px;
    border-radius: 10px;
	padding: 4px;
	margin: 6px;
	font-size: medium;
	font-weight: 500;
	font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
}
button:hover{
	background-color:#96f2e3;
}
table{
	border: 1px solid #ccc;
  	border-collapse: collapse;
  	margin: 0;
  	padding: 0;
  	width: 100%;
  	table-layout: fixed;
}
table th{
	background-color: #444444;
	color: #FFF;
	padding: 10px;
	border-radius:4px;
	margin:5px;
}

#menu {
	background: #4BCCAE;
	color: #FFF;
	height: 62px;
	padding-left: 20px;
	border-radius: 10px;
	width: 70%;
	position: sticky;
	top: 10px;
}

#menu ul, #menu li {
	margin: 0 auto;
	padding: 0;
	list-style: none
}

#menu ul {
	width: 100%;
}

#menu li {
	float: left;
	display: inline;
	position: relative;
}

#menu a {
	display: block;
	line-height: 62px;
	padding: 0 14px;
	text-decoration: none;
	color: #FFFFFF;
	font-size: 16px;
}

#menu a.dropdown-arrow:after {
	content: "\23F7";
	margin-left: 5px;
}

#menu li a:hover {
	color: #000000;
	background: #96F2E3;
}

#menu input {
	display: none;
	margin: 0;
	padding: 0;
	height: 62px;
	width: 100%;
	opacity: 0;
	cursor: pointer
}

#menu label {
	display: none;
	line-height: 62px;
	text-align: center;
	position: absolute;
	left: 35px
}

#menu label:before {
	font-size: 1.6em;
	content: "\2261";
	margin-left: 20px;
}

#menu ul.sub-menus {
	height: auto;
	overflow: hidden;
	width: 170px;
	background: #444444;
	position: absolute;
	z-index: 99;
	display: none;
}

#menu ul.sub-menus li {
	display: block;
	width: 100%;
}

#menu ul.sub-menus a {
	color: #FFFFFF;
	font-size: 16px;
}

#menu li:hover ul.sub-menus {
	display: block
}

#menu ul.sub-menus a:hover {
	background: #F2F2F2;
	color: #444444;
}

@media screen and (max-width: 800px) {
	#menu {
		position: relative
	}
	#menu ul {
		background: #111;
		position: absolute;
		top: 100%;
		right: 0;
		left: 0;
		z-index: 3;
		height: auto;
		display: none
	}
	#menu ul.sub-menus {
		width: 100%;
		position: static;
	}
	#menu ul.sub-menus a {
		padding-left: 30px;
	}
	#menu li {
		display: block;
		float: none;
		width: auto;
	}
	#menu input, #menu label {
		position: absolute;
		top: 0;
		left: 0;
		display: block
	}
	#menu input {
		z-index: 4
	}
	#menu input:checked+label {
		color: white
	}
	#menu input:checked+label:before {
		content: "\00d7"
	}
	#menu input:checked ~ ul {
		display: block
	}
}
</style>
</head>
<body>
	<nav id='menu'>
		<input type='checkbox' id='responsive-menu' onclick='updatemenu()'><label></label>
		<ul>
			<li><a href='/mvc_crud'>Home</a></li>
			<li><a href='/mvc_crud/fetch'>Fetch</a></li>
			<li><a href='/mvc_crud/insert'>Insert</a></li>
			<li><a href='#'>About</a></li>
			<li><a href='#'>Contact</a></li>
		</ul>
	</nav>
	<div class="main">
		<h1>Fetch Data From The Database</h1>
		<div class="search">
			<form action="search" method="post">
				<input type="text" name="content">
				<button>Search</button>
			</form>
		</div>
		<h3>${message}</h3>
		<div class="table" style="overflow-x:auto;">
			<table>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Email</th>
					<th>Designation</th>
					<th>Date of Birth</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
				<c:forEach var="emp" items="${list}">
				<tr>
					<td>${emp.getId()}</td>
					<td>${emp.getName()}</td>
					<td>${emp.getEmail()}</td>
					<td>${emp.getDesignation()}</td>
					<td>${emp.getDob()}</td>
					<td><a href="edit?id=${emp.getId()}"><button>Edit</button></a></td>
					<td><a href="delete?id=${emp.getId()}"><button>Delete</button></a></td>
				</tr>
				</c:forEach>
				
			</table>
		</div>
	</div>
</body>
</html>