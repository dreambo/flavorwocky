<%
/*
Copyright (c) 2012, Luanne Misquitta
All rights reserved. See License.txt
 */
%>
<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:fb="http://www.facebook.com/2008/fbml">
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Flavorwocky"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		<r:require module="jquery-ui"/>
		<g:layoutHead/>
        <r:layoutResources />
	</head>
	<body>
	<facebook:initJS appId="${facebook.app.id}"/>
		<div id="grailsLogo" role="banner">
		    <a id="logo" href="${grailsApplication.config.grails.serverURL}">Flavorwocky</a>
            <div id="extra">
                <g:if test="${loggedIn}">
                 Hi ${session.userName}!&nbsp;
                 <a href="${createLink(controller:'flavorwocky', action:'logout', absolute:'true')}">Log Out</a>
                <!-- <facebook:logoutLink nextUrl="${createLink(controller:'flavorwocky', action:'logout', absolute:'true')}">Log Out</facebook:logoutLink> -->

                </g:if>
                <g:else>
                <a href="${createLink(controller:'flavorwocky', action:'requestLogin', absolute:'true')}"><img src="${resource(dir: 'images', file: 'login-twitter.png')}" alt="Login with Twitter"></a>
                <facebook:loginLink
                    cancelUrl="${createLink(controller:'flavorwocky', absolute:'true')}"
                    redirectUrl="${createLink(controller:'flavorwocky',action:'login', absolute:'true')}"><img src="${resource(dir: 'images', file: 'login-button.png')}" alt="Login with Facebook"></facebook:loginLink>
                </g:else>
                <a href="about">About</a>
                <a href="help">Help</a>
                <g:tweet />
		</div>
		<g:layoutBody/>
		<div class="footer" role="contentinfo">

				    <div id="ping-ok" class="ui-widget neo4j-ping">
                        <div class="ui-state-highlight ui-corner-all" style="margin-top: 2px; padding: 0 .7em;">
                            <p><span class="ui-icon ui-icon-info" style="float: left; margin-right: .3em;"></span>
                            Neo4J server ping - <strong>OK!</strong>
        					</p><p>
        					<a class="ping-server" href="#">Ping server</a>
        					</p>
                        </div>
                    </div>
                    <div id="ping-fail" class="ui-widget neo4j-ping">
        				<div class="ui-state-error ui-corner-all" style="margin-top: 2px; padding: 0 .7em;">
        					<p><span class="ui-icon ui-icon-alert" style="float: left; margin-right: .3em;"></span>
        					Neo4J server ping - <strong>failed!</strong>
        					</p><p>
        					<a class="ping-server" href="#">Ping server</a>
        					</p>
        				</div>
        			</div>
        			<div class="copyright">Copyright &copy; 2012, Luanne Misquitta</div>

		</div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
        <r:layoutResources />
	</body>
</html>