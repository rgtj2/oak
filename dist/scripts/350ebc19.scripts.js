(function(){"use strict";angular.module("oakApp",["ngCookies","ngResource","ngSanitize","ngRoute"]).config(["$routeProvider",function(a){return a.when("/",{templateUrl:"views/main.html",controller:"MainCtrl"}).when("/link1",{templateUrl:"views/link1.html",controller:"Link1Ctrl"}).when("/link2",{templateUrl:"views/link2.html",controller:"Link1Ctrl"}).otherwise({redirectTo:"/"})}])}).call(this),function(){"use strict";angular.module("oakApp").controller("MainCtrl",["$scope",function(a){return a.awesomeThings=["HTML5 Boilerplate","AngularJS","Karma"],a.ding=new Howl({urls:["images/audio/ding.mp3"]}),a.blip=new Howl({urls:["images/audio/blip.mp3"]}),a.play=function(a){return a.play()}}])}.call(this),function(){"use strict";angular.module("oakApp").controller("Link1Ctrl",["$scope",function(a){var b,c;return a.awesomeThings=["HTML5 Boilerplate","AngularJS","Karma"],a.ding=new Howl({urls:["images/audio/ding.mp3"]}),a.blip=new Howl({urls:["images/audio/blip.mp3"]}),a.play=function(a){return a.play()},c=document.getElementById("scene"),b=new Parallax(c)}])}.call(this);