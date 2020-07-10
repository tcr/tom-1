angular.module('app', [])

.directive('uvSignal', function() {
  return {
    restrict: 'E',

    scope: {
      'data': '=',
      'width': '=',
      'height': '=',
      'strokeColor': '@',
      'strokeWidth': '=',
      'yGuides': '=',
      'yGuide': '='
    },

    link: function($scope, $element, $attrs) {
      var padding = {left: 0, top: 2, right: 0, bottom: 2}
      ,   width = $scope.width || 80
      ,   height = $scope.height || 40
      ,   yGuides = $scope.yGuides || []
      ,   yGuide = $scope.yGuide
      ,   data = [0].concat($scope.data || [])
      ,   strokeColor = $scope.strokeColor || '#484'
      ,   strokeWidth = $scope.strokeWidth || 2
      ,   max = d3.max(data)
      ,   min = d3.min([0].concat(data))
      ,   length = data.length
      ,   x = d3.scale.linear().domain([0, length]).range([padding.left - 2, (width * 2) - padding.left - padding.right])
      ,   y = d3.scale.linear().domain([min, max]).range([height - padding.top - padding.bottom, padding.top])
      ,   line = d3.svg.line().x(function(d,i) { return x(Math.floor(i / 2)) }).y(function(d) { return y(d) })
      ;
      
      if (yGuide) {
        yGuides.push(yGuide);
      }
        
      
      var chart = d3.select($element[0])
        .classed('sparkline', true)
      ;
      
      var svg = chart.append('svg')
        .attr('width', width + 20) 
        .attr('height', height)
      ;
      
      var clip = svg.append('clipPath')
        .attr("id", "clip")
        .append("rect")
          .attr("x", 0)
          .attr("y", 0)
          .attr("width", width)
          .attr("height", height)
      ;
      
      var guide = svg
        .selectAll('.sparkline-y-guide')
          .data(yGuides)
          .enter()
            .append('line').classed('sparkline-y-guide', true)
              .attr('clip-path', 'url(#clip)')
              .attr('x1', x(0))
              .attr('y1', function(d) { return Math.floor(y(d)) + 0.5; })
              .attr('x2', x(length - 1))
              .attr('y2', function(d) { return Math.floor(y(d)) + 0.5; })
              .attr('fill', 'none')
              .attr('stroke', '#ddd')
              .attr('stroke-width', 1)
              .attr('stroke-linecap', 'butt')
      ;
      
      var path = svg.append("path").classed('sparkline-stroke', true)
        .attr('clip-path', 'url(#clip)')
        .attr('d', line(data))
        .attr('fill', 'none')
        .attr('stroke', strokeColor)
        .attr('stroke-width', strokeWidth)
        .attr('stroke-linecap', 'butt')
      ;
      
      svg.append("text")
        .attr('x', 72).attr('y', 7)
        .style('font-size', '8px')
        .text("1");
      svg.append("text")
        .attr('x', 72).attr('y', 38)
        .style('font-size', '8px')
        .text("0");
      
    }
  };
});