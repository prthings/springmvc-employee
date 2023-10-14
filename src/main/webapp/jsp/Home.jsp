<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home - Crud Operations</title>
<style>
body,.main{
    background-color:#f8fff0;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    align-content: center;
    height: 100%;
}
button{
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
button:hover{
    background-color: #7caaff;
    border-radius: 10px;
    border: none;
    color: white;
}
.main{
    height: 500px;
}
@import url("https://fonts.googleapis.com/css2?family=Baloo+Bhaijaan+2&display=swap");

svg {
	font-family: "Baloo Bhaijaan 2", sans-serif;
	width: 100%; height: 100%;
    font-weight: 600;
}
svg text {
	animation: stroke 2s infinite alternate;
	stroke-width: 2;
	stroke: #7caaff;
	font-size: 90px;
}
@keyframes stroke {
	0%   {
		fill: rgba(72,138,204,0); stroke: #4cf7e7;
		stroke-dashoffset: 25%; stroke-dasharray: 0 50%; stroke-width: 2;
	}
	80%  {fill: rgba(72,138,204,0); stroke: #4cf7e7; stroke-width: 3; }
	100% {
		fill: #5dc9be; stroke: rgba(54,95,160,0);
		stroke-dashoffset: -25%; stroke-dasharray: 50% 0; stroke-width: 0;
	}
}

.wrapper {
    width: 100vw;
}
#menu {
	background: #4BCCAE;
	color: #FFF;
	height: 62px;
	padding-left: 18px;
	border-radius: 1px;
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
#menu ul.sub-menus{
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
#menu ul.sub-menus a:hover{
	background: #F2F2F2;
	color: #444444;
}
@media screen and (max-width: 800px){
	#menu {position:relative}
	#menu ul {background:#111;position:absolute;top:100%;right:0;left:0;z-index:3;height:auto;display:none}
	#menu ul.sub-menus {width:100%;position:static;}
	#menu ul.sub-menus a {padding-left:30px;}
	#menu li {display:block;float:none;width:auto;}
	#menu input, #menu label {position:absolute;top:0;left:0;display:block}
	#menu input {z-index:4}
	#menu input:checked + label {color:white}
	#menu input:checked + label:before {content:"\00d7"}
	#menu input:checked ~ ul {display:block}
}
</style>
</head>
<body>
<div class="main">
    <div class="wrapper">
        <svg>
            <text x="50%" y="50%" dy=".35em" text-anchor="middle">
                CRUD OPERATIONS
            </text>
        </svg>
    </div>
<h3>${message}</h3>
<a href="insert"><button>Insert Record</button></a>
<a href="fetch"><button>Fetch Data</button></a>
</div>
</body>
</html>