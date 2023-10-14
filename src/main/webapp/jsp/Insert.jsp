<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Data</title>
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
	color: #376c8b;
}

.one, form {
	display: flex;
	flex-direction: column;
	flex-flow: column;
	align-items: center;
	justify-content: center;
	height: 600px;
	padding: 10px;
}

label, input, button {
	padding: 4px;
	margin: 6px;
	font-size: medium;
	font-weight: 500;
	font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
	width: 244px;
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

input:hover {
	padding: 10px;
}

input:invalid {
	background-color: #fce5e5;
	border: 2px solid red;
}

input:valid {
	background-color: #e6f7ec;
	border: 2px solid green;
}

input:placeholder-shown {
	font-size: small;
	color: #a1a1a1;
	font-weight: 400;
}

button {
	background-color: #4cf7e7;
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

button:hover {
	background-color: #7caaff;
	border-radius: 10px;
	border: none;
	color: white;
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
	<div class="one">
		<div>
			<h1>Enter the Details of Employee</h1>
		</div>
		<form action="insert" method="post">
			<label>Name:</label> <input type="text" name="name" id="name"
				minlength="3" maxlength="15" placeholder="Enter your Name"
				title="Enter Minimum 3 Character"> <label>Email:</label> <input
				type="email" name="email" id="email"
				placeholder="Enter your Email Id" title="Enter proper email id">
			<label>Designation:</label> <input type="text" name="designation"
				id="designation" minlength="3" maxlength="20"
				placeholder="Enter Your Designation"
				title="Enter Minimum 3 Character"> <label>Date Of
				Birth:</label> <input type="date" name="dob" id="dob"
				title="Enter proper date of birth">
			<button>Add</button>
			<button type="button">Cancel</button>
		</form>
	</div>
</body>
</html>