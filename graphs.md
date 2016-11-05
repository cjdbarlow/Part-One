#Graphs

<script src="http://d3js.org/d3.v2.min.js?2.10.0"></script>
<script src="xkcd.js"></script>

<div class="graphs">
    <script>
        // Generate some data.
        function f1 (x) {
            return Math.exp(-0.5 * (x - 1) * (x - 1)) * Math.sin(x + 0.2) + 0.05;
        }

        function f2 (x) {
            return 0.5 * Math.cos(x - 0.5) + 0.1;
        }

        var xmin = -1.0,
            xmax = 7,
            N = 100,
            data = d3.range(xmin, xmax, (xmax - xmin) / N).map(function (d) {
                return {x: d, y: f1(d)};
            })
            data2 = d3.range(xmin, xmax, (xmax - xmin) / N).map(function (d) {
                return {x: d, y: f2(d)};
            });

        // Draw the axes
        var plot = xkcdplot("Title", "Xaxis", "Yaxis"); //Name each here
        plot("div.graphs");

        // Add the curves
        plot.plot(data);
        plot.plot(data2, {stroke: "red"});

        // Render the graph
        plot.xlim([xmin - 0.5, xmax + 0.5]).draw();

    </script>
</div>