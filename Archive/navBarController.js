angular.module("pollr", [])
  .directive("pollrNav", function() { 
  return {
    restrict: "E",         
    replace: true,         
    transclude: true,      
    templateUrl: "pollrNav.html",    
    compile: function(element, attrs) {  
      var li, liElements, links, index, length;

      liElements = $(element).find("#navigation-tabs li");   
      for (index = 0, length = liElements.length; index < length; index++) {
        li = liElements[index];
        links = $(li).find("a");  
        if (links[0].textContent === attrs.currentTab) $(li).addClass("active"); 
      }
    }
  }});
 ;