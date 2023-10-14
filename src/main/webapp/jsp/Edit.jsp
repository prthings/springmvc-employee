<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Empolyee Details</title>
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
	padding: 50px;
	border-radius: 20px;
	text-align: center;
	width:500px;
}
label, input, button {
	padding: 4px;
	margin: 6px;
	font-size: medium;
	font-weight: 500;
	font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
	width: 244px;
}
button{
    background-color: #fafafa;
    width: 244px;
    height: 45px;
    color: #376c8b;
    padding: 6px;
    margin: 10px;
    border-radius: 10px;
    border: none;
    font-size: 16px;
    font-weight: 600;
}
button:hover{
	background-color:#4bccae;
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
	padding: 4px;
	margin: 6px;
	font-size: medium;
	font-weight: 500;
	font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
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
		<form action="edit" method="post">
			<input type="text" name="id" value="${emp.getId()}" hidden=""> 
			<label>Name</label>
			<input type="text" name="name" value="${emp.getName()}" /><br><br>
			<label>Email</label>
			<input type="text" name="email" value="${emp.getEmail()}" /><br><br>
			<label>Designation</label>
			<input type="text" name="designation" value="${emp.getDesignation()}" /><br><br>
			<label>DOB</label>
			<input type="date" name="dob" value="${emp.getDob()}" /><br><br>
			<button>Edit</button>
			<a href="fetch"><button type="button">Cancel</button></a>
		</form>
	</div>
</body>
</html>