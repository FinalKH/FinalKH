<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>관광지</title>
<%@ include file="../include/headerTravel.jsp"%>
<style>
$
color1: #333 ;
 $color2: #aaa ;

* {
	box-sizing: border-box;
}

html, body, #infinite {
	height: 100%;
}

#wrapper {
	color: $color1;
	font-size: 15px;
	font-family: 'Source Sans Pro', sans-serif;
	font-weight: 400;
	padding: 0 3em;
	display: flex;
	flex-direction: row;
	justify-content: center;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
	text-rendering: optimizeLegibility;
}

h1 {
	font-size: 48px;
	font-weight: 700;
}

h3 {
	font-size: 32px;
	margin-top: 0;
	font-family: 'Playfair Display', serif;
	font-weight: 900;
}

h4 {
	font-size: 24px;
	font-weight: 700;
	text-transform: uppercase;
	letter-spacing: 1px;
}

h5 {
	font-size: 18px;
}

.sub {
	color: $color2;
	font-family: 'Playfair Display', serif;
	font-weight: 400;
	font-style: italic;
}

#header {
	position: relative;
	min-width: 250px; main { position : fixed;
	width: 250px;
	top: 0;
	bottom: 0;
	margin: auto 0;
	padding: 0 3em 3em 0;
}

}
#main {
	min-width: 500px;
	max-width: 850px;
	overflow: hidden; header , footer { display : flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	width: 100%;
	text-align: center;
	margin-top: 0px; div { max-width : 500px;
	border: 3px solid lighten($ color2, 25);
	padding: 1em 2em 2em;
}

}
}
article {
	transition: all 0.75s cubic-bezier(.3, .53, 0, 1);
	display: flex;
	flex-direction: row;
	align-items: center;
	justify-content: center;
	height: 375px;
	overflow: hidden;
	transform: translateX(-100%);
	opacity: 0; figure { padding : 0;
	margin: 0;
	height: 375px;
	width: 55%;
	background-size: cover;
	background-position: center center;
}

main {
	width: 45%;
	padding: 0 2.5em;
}

p {
	text-align: justify;
}

&
.odd {
	flex-direction: row-reverse;
	transform: translateX(100%);
}

&
.visible, &.visible-add.visible-add-active {
	transform: translateX(0%);
	opacity: 1;
}

&
.visible-remove.visible-remove-active {
	transform: translateX(-100%);
	opacity: 0;
}

&
.odd.visible-remove.visible-remove-active {
	transform: translateX(100%);
}

&
:after {
	content: '';
	display: block;
	clear: both;
}
}
</style>
</head>
<body ng-app="app" ng-controller="MainController">
	<div id="infinite" infinite-scroll>
		<div id="wrapper">
			<main id="main"> <header
				ng-style="{ 'height' : viewportHeight*2 + 'px' }">
			<div>
				<h1>{{ message }}</h1>
				<h3 class="sub">Scroll like the wind...</h3>
				<p>Just a fun little demo for monitoring user scrolling with
					angularjs directives. Scroll up and down to see animation as the
					elements enter and leave the viewport.</p>
				<p>Playfair Display &amp; Source Sans Pro are what makes this
					look pretty.</p>
				<p>
					Stock photos courtesy of <a href="https://unsplash.com/">unsplash</a>.
				</p>
			</div>
			</header> <article visible visible-model="article.visible"
				ng-class="{ 'visible' : article.visible }"
				ng-repeat="article in forests" ng-class-odd="'odd'"> <figure
				ng-style="{ 'background-image' : 'url(' + article.image + ')' }"></figure>
			<main>
			<h3>{{ article.name }}</h3>
			<h5 class="sub">{{ article.location }}</h5>
			<p>{{ article.summary }}</p>
			</main> </article> <footer
				ng-style="{ 'height' : viewportHeight*2 + 'px', 'margin-bottom' : 0 - viewportHeight + 'px' }">
			<div>
				<h1>{{ message }}</h1>
				<h3 class="sub">Scroll like the wind...</h3>
				<h4>Infinite Scrolling Concept</h4>
				<p>Scroll up and down to see animation as the elements enter and
					leave the viewport.</p>
				<p>Playfair Display &amp; Source Sans Pro are what makes this
					look pretty.</p>
				<p>
					Stock photos courtesy of <a href="https://unsplash.com/">unsplash</a>.
				</p>
			</div>
			</footer> </main>
		</div>
	</div>

	<script>
	angular.module('app', ['ngAnimate'])
	.directive('infiniteScroll', function($window, $document, $timeout) {
		return {
			restrict: 'A',
			link: function(scope, element, attrs) {
				
				// Check if user initiated scroll
				var userScroll = false;
				function mouseEvent(e) { 
					userScroll = true; 
				}
				// Mozilla/Webkit 
				if(window.addEventListener) {
					document.addEventListener('DOMMouseScroll', mouseEvent, false); 
				}
				//for IE/OPERA etc 
				document.onmousewheel = mouseEvent;
										
				// infinite scrolling logic
				angular.element($window).bind("scroll", function() {
					var h = element[0].scrollHeight - $window.innerHeight;
					var offset = $window.pageYOffset;
					
					if(h == offset && userScroll) {
						$window.scrollTo(0, 0);
						userScroll = false;
						scope.viewportCounterDown = scope.viewportCounterDown + 1;
						scope.$apply();
					}
					else if(offset == 0 && userScroll) {
						$window.scrollTo(0, h);
						userScroll = false;
						scope.viewportCounterUp = scope.viewportCounterUp + 1;
						scope.$apply();
					}
				});
				
				// save viewport height to scope
				var reportValues = function() {
					scope.viewportHeight = $window.innerHeight;
					scope.$apply();
				}
				reportValues();
				$window.scrollTo(0, $window.innerHeight/2);
				angular.element($window).bind("resize", reportValues);
			}
		}
	})
	.directive('visible', function($window, $document, $timeout){
		return {
			restrict: 'AE',
			scope: {
				'visibleModel' : '='
			},
			link: function(scope, element, attr) {
				
				// check if element is in viewport
				var checkVisibility = function() {
					var h = $window.innerHeight;
					var box = element[0].getBoundingClientRect();
					var offset = $window.pageYOffset;
					if((offset) > (box.top + offset - h) && (offset - element[0].offsetHeight) < (box.top + offset)) {
						scope.visibleModel = true;
						scope.$apply();
					} else {
						scope.visibleModel = false;
						scope.$apply();
					}
				}
				
				// initiate
				$timeout(function(){
					checkVisibility();
				}, 1);
				
				// check on scroll and resize
				angular.element($window).bind("scroll", checkVisibility);
				angular.element($window).bind("resize", checkVisibility);		
			}
		}
	})
	.controller('MainController', function($scope) {
		
		$scope.message = 'Hi There!';
		
		$scope.viewportCounterDown = 0;
		$scope.viewportCounterUp = 0;
		
		var count = function(num) {
			if(num > 20)
				$scope.message = 'Don\'t you have better things to do?';
			else if(num > 10)
				$scope.message = 'Still scrolling?!';
			else if(num > 7)
				$scope.message = 'Whoo hoo!';
			else if(num > 5)
				$scope.message = 'Get it now?';
			else if(num > 3)
				$scope.message = 'Try scrolling up too!';
			else if(num > 1)
				$scope.message = 'Confused? Watch your scrollbar...';
			else if(num > 0)
				$scope.message = 'Welcome back.';
		}
		
		$scope.$watch('viewportCounterDown', function(newValue, oldValue) {
			count($scope.viewportCounterDown + $scope.viewportCounterUp);
		})
		$scope.$watch('viewportCounterUp', function(newValue, oldValue) {
			count($scope.viewportCounterDown + $scope.viewportCounterUp);
		})
			
		$scope.forests = [
	            {
	                'name' : 'Fox in the Forest',
	                'summary' : 'A magnificent Bamboo forest in the district of Arashiyama, west to Kyoto, Japan.',
	                'location' : 'Kyoto, Japan',
	                'image' : 'https://unsplash.imgix.net/reserve/nqr33LlRR66jA3Ez9mX7_fox-in-the-forest-by-jose-inesta.jpg?fit=crop&fm=jpg&h=700&q=75&w=1050'
	        	},
	            {
	                'name' : 'Winter Flurries',
	                'summary' : 'The forest is named for the majestic Giant Sequoia trees which populate 38 distinct groves within the boundaries of the forest. The Sequoia National Forest covers 4,829 sq km (1,865 sq mi).',
	                'location' : 'California, United States',
	                'image' : 'https://ununsplash.imgix.net/reserve/unsplash_52cee67a5c618_1.JPG?fit=crop&fm=jpg&h=700&q=75&w=1050'
	        	},
	            {
	                'name' : 'Redwood National Park',
	                'summary' : 'The Redwood National parks is a combination of four parks that together protect 45% of all remaining coast redwood (Sequoia sempervirens) old-growth forests, totaling at least 158 square km.',
	                'location' : 'California, United States',
	                'image' : 'https://unsplash.imgix.net/photo-1427955569621-3e494de2b1d2?fit=crop&fm=jpg&h=700&q=75&w=1050'
	        	},
	            {
	                'name' : 'Black Forest',
	                'summary' : 'The name “Black Forest” was given by the Romans who referred to the forest blocking out most of the sunlight from getting inside the forest by the dense growth of conifers.',
	                'location' : 'Germany',
	                'image' : 'https://unsplash.imgix.net/photo-1425141750113-187b6a13e28c?fit=crop&fm=jpg&h=675&q=75&w=1050'
	        	},
	            {
	                'name' : 'Crooked Forest',
	                'summary' : 'It is generally believed that some form of human tool or technique was used to make the trees grow this way, but the method and motive are not currently known. ',
	                'location' : 'Poland',
	                'image' : 'https://ununsplash.imgix.net/photo-1422640805998-18a4dd89bec2?fit=crop&fm=jpg&h=625&q=75&w=1050'
	        	},
				{
	                'name' : 'Sagano Bamboo Forest',
	                'summary' : 'A magnificent Bamboo forest in the district of Arashiyama, west to Kyoto, Japan.',
	                'location' : 'Kyoto, Japan',
	                'image' : 'https://unsplash.imgix.net/reserve/nqr33LlRR66jA3Ez9mX7_fox-in-the-forest-by-jose-inesta.jpg?fit=crop&fm=jpg&h=700&q=75&w=1050'
	        	},
	            {
	                'name' : 'Giant Sequoias',
	                'summary' : 'The forest is named for the majestic Giant Sequoia trees which populate 38 distinct groves within the boundaries of the forest. The Sequoia National Forest covers 4,829 sq km (1,865 sq mi).',
	                'location' : 'California, United States',
	                'image' : 'https://ununsplash.imgix.net/reserve/unsplash_52cee67a5c618_1.JPG?fit=crop&fm=jpg&h=700&q=75&w=1050'
	        	},
	            {
	                'name' : 'Redwood National Park',
	                'summary' : 'The Redwood National parks is a combination of four parks that together protect 45% of all remaining coast redwood (Sequoia sempervirens) old-growth forests, totaling at least 158 square km.',
	                'location' : 'California, United States',
	                'image' : 'https://unsplash.imgix.net/photo-1427955569621-3e494de2b1d2?fit=crop&fm=jpg&h=700&q=75&w=1050'
	        	},
	            {
	                'name' : 'Black Forest',
	                'summary' : 'The name “Black Forest” was given by the Romans who referred to the forest blocking out most of the sunlight from getting inside the forest by the dense growth of conifers.',
	                'location' : 'Germany',
	                'image' : 'https://unsplash.imgix.net/photo-1425141750113-187b6a13e28c?fit=crop&fm=jpg&h=675&q=75&w=1050'
	        	},
	            {
	                'name' : 'Crooked Forest',
	                'summary' : 'It is generally believed that some form of human tool or technique was used to make the trees grow this way, but the method and motive are not currently known. ',
	                'location' : 'Poland',
	                'image' : 'https://ununsplash.imgix.net/photo-1422640805998-18a4dd89bec2?fit=crop&fm=jpg&h=625&q=75&w=1050'
	        	}
	        ];
	})
	</script>
</body>
</html>