<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
    <script type="text/javascript">
    
		$(function(){
			
			 var lastScrollTop = 0,
		        delta = 15;
		    $(window).scroll(function (event) {
		        var st = $(this).scrollTop();
		        if (Math.abs(lastScrollTop - st) <= delta) return;
		        if (st > 50) {
		        	/*스크롤 내릴 */
		            $(".header").css("background-color", "rgba(255,255,255,0.85)");
		            $(".mainLogo").css("width", "30px");
		            $(".headerUl").css("padding", "10px 0px 5px 0px");
		            $(".h_a").css("color", "#282828");
		            $(".h_a").addClass("h_a2");
		            $(".mainLogo").attr("src","/resources/images/portLogo02.png");
		            
		        	
		        } else {
		        	$(".header").css("background-color", "rgba(0,0,0,0.0)");
		            $(".mainLogo").css("width", "35px");
		            $(".headerUl").css("padding", "30px 0 0 0");
		            $(".h_a").css("color", "white");
		            $(".h_a").removeClass("h_a2");
		            $(".mainLogo").attr("src","/resources/images/portLogo01.png");
		        }
		        lastScrollTop = st;
		    });
			
			
			
			
			 $('.about').bind('click', function() {
				    $('html').animate({scrollTop: '400'}, 600);
				  });
			 $('.resume').bind('click', function() {
				    $('html').animate({scrollTop: '950'}, 600);
				  });
			 $('.work').bind('click', function() {
				    $('html').animate({scrollTop: '400'}, 600);
				  });
			 $('.contact').bind('click', function() {
				    $('html').animate({scrollTop: '400'}, 600);
				  });
			 
			 
			 
			 
			 
			 
		})

    </script>
</head>

<body>
<header class="header">
	<div class="innerHeader">
		<ul class="headerUl">
			<li>
				<a class="about h_a">About</a>
			</li>
			<li>
				<a class="resume h_a">Resume</a>
			</li>
			<li>
				<img class="mainLogo" src="/resources/images/portLogo01.png" alt="메인 로고">
			</li>
			<li>
				<a class="work h_a">Work</a>
			</li>
			<li>
				<a class="contact h_a">Contact</a>
			</li>
		</ul>
	</div>
</header>

