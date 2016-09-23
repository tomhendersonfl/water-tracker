var reportStrengths = function(chartContainer, data, isThriverDashboard) {
    if (!data || !chartContainer) {
        return
    }

    var getIconCode = function(name) {
        var code;
        if(name == "Environment") {
            code = "\uf102";
        } else if(name == "Movement") {
            code = "\uf101";
        } else if(name == "Rejuvenation") {
            code = "\uf103";
        } else if(name == "Diet") {
            code = "\uf100";
        } else if(name == "Spirit") {
            code = "\uf104";
        }
        return code;
    }

    var $chartContainerObj = $(chartContainer);

    // set up basic dimensions
    var chartDim = {
        width: $chartContainerObj.width(),
        height: $chartContainerObj.height()
    }

    var margins = { left: 100, right: 50, top: 5, bottom: 30 }

    var dimensions = {
        width: chartDim.width - margins.left - margins.right,
        height: chartDim.height - margins.top - margins.bottom
    }

    var barHeight = dimensions.height / (data.length * 1.75);

    var labelBufferWidth = 20; //give the label some extra space
    var iconLabelBufferWidth = 20; //need to give some space for the iconLabels, too

    var bufferWidth = labelBufferWidth + iconLabelBufferWidth;
    var barWidthMax = dimensions.width - (margins.left + bufferWidth);

    // set up x and y scales
    var xScale = d3.scale.linear()
        .domain([0, 100])
        .rangeRound([0, barWidthMax]);

    var yScale = d3.scale.linear()
        .domain([0, data.length])
        .rangeRound([0, dimensions.height]);


    // start graphin'!
    var chart = d3.select(chartContainer).append("svg")
        .attr({
            //viewBox is min-x, min-y, width, height
            viewBox: [0, 0, dimensions.width, dimensions.height].join(" "),
            preserveAspectRatio: "xMinYMin meet"
        })
        .append("g")
        .attr("transform", "translate(" + margins.left + "," + margins.top + ")");

    var groups = chart.selectAll("g")
        .data(data)
        .enter()
        .append("g")
        .attr("class", "bar")

    var labels = groups.append("text")
        .attr("class", "label")
        .attr("x", 0)
        .attr("y", function(d,i) {
            //magic number 6 adjusts to center the text with the bar.
            return yScale(i) + (barHeight / 2) + 6;
        })
        .style("line-height", barHeight)
        .style("font-size", "15px")
        .style("text-anchor", "end")
        .text(function(d) {
            return d.name
        });

    var backgroundBars = groups.append("rect")
        .attr("class", "bar-background")
        .attr("x", bufferWidth)
        .attr("y", function(d,i) {
            return yScale(i);
        })
        .attr("height", barHeight)
        .attr("width", 0)
        .transition()
        .duration(800)
        .ease("quad")
        .attr("width", barWidthMax)


    var dataBars = groups.append("rect")
        .attr("class", function(d) {
            return ["data-bar", d.name.toLowerCase()].join(" ")
        })
        .attr("x", bufferWidth)
        .attr("y", function(d,i) {
            return yScale(i);
        })
        .attr("fill", function(d) {
            return d.color;
        })
        .attr("height", barHeight)
        .attr("width", 0)
        .transition()
        .duration(1600)
        .ease("quad")
        .attr("width", function(d) {
            return xScale(d.value);
        });

    var iconGroups = groups.append('g')
        .attr('class','icons-group');

    var iconCircles = iconGroups.append('circle')
        .attr('class', function(d) {
            return ["icons-circle-", d.name.toLowerCase()].join("")
        })
        .attr("cx", function() {
            if(isThriverDashboard) {
                return iconLabelBufferWidth + 25;
            } else {
                // magic number to get the icons aligned properly
                return iconLabelBufferWidth + 31;
            }
        }).attr("cy", function(d, i) {
            // the styles for the two versions of the charts
            // unfortunately have some sizing issues, so we split them out manually:

            if(isThriverDashboard) {
                // for the dashboard version:
                return yScale(i) + 11;
            } else {
                // for the strengths report version:
                return yScale(i) + 22;
            }
        })
        .attr('r', (barHeight / 2) + 2)
        .attr('stroke-width', 2)
        .attr('fill', 'white');

    var iconLabels = iconGroups.append("text")
        .attr("width", 50)
        .attr("height", 50)
        .attr("x", function() {
            if(isThriverDashboard) {
                return iconLabelBufferWidth + 18;
            } else {
                return iconLabelBufferWidth + 16;
            }
        })
        .attr("y", function(d,i) {
            if(isThriverDashboard) {
                return yScale(i) + 18;
            } else {
                return yScale(i) + 33;
            }
        })
        .attr("font-family", 'icons')
        .attr("font-size", function() {
            if(isThriverDashboard) {
                return "10px"
            } else {
                return "15px"
            }
        })
        .attr('class', function(d) {
            if(d.name == "Environment") {
                classNameSuffix = "enviro"
            } else if(d.name == "Movement") {
                classNameSuffix = "move"
            } else if(d.name == "Rejuvenation") {
                classNameSuffix = "rejuv"
            } else {
                classNameSuffix = d.name.toLowerCase()
            }

            return ["icons-i-", classNameSuffix].join("");
        })
        .text(function(d) {
            return getIconCode(d.name)
        });
}
