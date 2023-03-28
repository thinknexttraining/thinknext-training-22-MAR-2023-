﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="hpopup.aspx.vb" Inherits="hpopup" %>

<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>jQuery First Visit Popup Demo</title>
    <style>
        body {
            margin-top: 0;
        }

        #container {
            max-width: 1000px;
            margin: 0 auto;
            background: #EEE;
        }

        h1,
        p {
            padding: 1em 1em;
        }

        #fvpp-blackout {
            display: none;
            z-index: 499;
            position: fixed;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            background: #000;
            opacity: 0.5;
        }

        #my-welcome-message {
            display: none;
            z-index: 500;
            position: fixed;
            width: 36%;
            left: 30%;
            top: 20%;
            padding: 20px 2%;
            font-family: Calibri, Arial, sans-serif;
            background: #FFF;
        }

        #fvpp-close {
            position: absolute;
            top: 10px;
            right: 20px;
            cursor: pointer;
        }

        #fvpp-dialog h2 {
            font-size: 2em;
            margin: 0;
        }

        #fvpp-dialog p {
            margin: 0;
        }
    </style>
</head>

<body>
    <div id="container">
        <h1>jQuery First Visit Popup Demo</h1>

        
        <div id="my-welcome-message">
            <h2>Welcome to my site</h2>
            <p>Hello, welcome to my website.</p>
        </div>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://www.jqueryscript.net/demo/jQuery-Plugin-To-Show-A-Popup-Only-Once-Per-Visitor-First-Visit-Popup/jquery.firstVisitPopup.js"></script>
        <script>
			$(function () {
				$('#my-welcome-message').firstVisitPopup({
					cookieName : 'homepage',
					showAgainSelector: '#show-message'
				});
			});
        </script>
</body>
</html>
