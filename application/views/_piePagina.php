 </div>
      <!-- Make page fluid-->

    </div>
    <!-- Wrap all page content end -->

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<?php echo base_url(); ?>minoral/js/bootstrap.min.js"></script>
    <script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js?lang=css&amp;skin=sons-of-obsidian"></script>

    <script src="<?php echo base_url(); ?>minoral/js/plugins/jquery.nicescroll.min.js"></script>

    <script src="<?php echo base_url(); ?>minoral/js/plugins/blockui/jquery.blockUI.js"></script>

    <script src="<?php echo base_url(); ?>minoral/js/plugins/jquery.easypiechart.min.js"></script>

    <script src="<?php echo base_url(); ?>minoral/js/plugins/jquery.animateNumbers.js"></script>

    <script src="<?php echo base_url(); ?>minoral/js/plugins/flot/jquery.flot.min.js"></script>
    <script src="<?php echo base_url(); ?>minoral/js/plugins/flot/jquery.flot.time.min.js"></script>
    <script src="<?php echo base_url(); ?>minoral/js/plugins/flot/jquery.flot.selection.min.js"></script>
    <script src="<?php echo base_url(); ?>minoral/js/plugins/flot/jquery.flot.animator.min.js"></script>
    <script src="<?php echo base_url(); ?>minoral/js/plugins/flot/jquery.flot.orderBars.js"></script>

    <script src="<?php echo base_url(); ?>minoral/js/plugins/rickshaw/raphael-min.js"></script> 
    <script src="<?php echo base_url(); ?>minoral/js/plugins/rickshaw/d3.v2.js"></script>
    <script src="<?php echo base_url(); ?>minoral/js/plugins/rickshaw/rickshaw.min.js"></script>

    <script src="<?php echo base_url(); ?>minoral/js/plugins/skycons/skycons.js"></script>

    <script src="<?php echo base_url(); ?>minoral/js/plugins/jquery.sparkline.min.js"></script>

    <script src="<?php echo base_url(); ?>minoral/js/plugins/summernote/summernote.min.js"></script>

    <script src="<?php echo base_url(); ?>minoral/js/plugins/chosen/chosen.jquery.min.js"></script>

    <script src="<?php echo base_url(); ?>minoral/js/plugins/tabdrop/bootstrap-tabdrop.min.js"></script>

    <script src="<?php echo base_url(); ?>minoral/js/plugins/morris/morris.min.js"></script>

    <script src="<?php echo base_url(); ?>minoral/js/charts.js"></script>
    <script src="<?php echo base_url(); ?>minoral/js/minoral.js"></script>
    <script src="<?php echo base_url(); ?>assert/js/XHR.js"></script>
    <script src="<?php echo base_url(); ?>assert/js/main.js"></script>

    <script>
    $(function(){

      // Initialize card flip
      $('.card.hover').hover(function(){
        $(this).addClass('flip');
      },function(){
        $(this).removeClass('flip');
      });

      // Make card front & back side same

      $('.card').each(function() {
        var front = $('.card .front');
        var back = $('.card .back');
        var frontH = front.height();
        var backH = back.height();

        

        if (backH > frontH) {
          front.height(backH - 8);
        }
      });

      // Initialize tabDrop
      $('.tabdrop').tabdrop({text: '<i class="fa fa-th-list"></i>'});
      
      //generate pie charts
      $('.easypiechart').easyPieChart();

      //generate actual pie charts
      $('.pie-chart').easyPieChart();

      //animate numbers on cards
      $("#users-count").animateNumbers(Math.round( Math.random() * 1000 ));
      $("#orders-count").animateNumbers(Math.round( Math.random() * 100 ));
      $("#sales-count").animateNumbers(Math.round( Math.random() * 10000 ));
      $("#visits-count").animateNumbers(Math.round( Math.random() * 10000 ));

      //animate numbers with class .animate-number with data-value attribute
      $(".animate-number").each(function() {
        var value = $(this).data('value');
        var duration = $(this).data('animation-duration');

        $(this).animateNumbers(value, true, duration, "linear");
      });

      //animate progress bars
      $('.animate-progress-bar').each(function(){
        var progress =  $(this).data('percentage');

        $(this).css('width', progress);
      })

      //update instance every 5 sec
      window.setInterval(function() {

        //animate numbers on cards
        $( '#users-count' ).animateNumbers( Math.round( Math.random() * 1000 ) );
        $( '#orders-count' ).animateNumbers( Math.round( Math.random() * 100 ) );
        $( '#sales-count' ).animateNumbers( Math.round( Math.random() * 10000 ) );
        $( '#visits-count' ).animateNumbers( Math.round( Math.random() * 10000 ) );

        //refresh every pie chart
        $('.easypiechart').each(function() {
          $(this).data('easyPieChart').update(Math.floor(100*Math.random()));
        });

      }, 5000);
      
      //server load rickshaw chart
      var graph;

      var seriesData = [ [], []];
      var random = new Rickshaw.Fixtures.RandomData(50);

      for (var i = 0; i < 50; i++) {
        random.addData(seriesData);
      }

      graph = new Rickshaw.Graph( {
        element: document.querySelector("#serverload-chart"),
        height: 150,
        renderer: 'area',
        series: [
          {
            data: seriesData[0],
            color: '#1693A5',
            name:'File Server'
          },{
            data: seriesData[1],
            color: '#e2e2e2',
            name:'Mail Server'
          }
        ]
      } );

      var hoverDetail = new Rickshaw.Graph.HoverDetail( {
        graph: graph,
      });

      setInterval( function() {
        random.removeData(seriesData);
        random.addData(seriesData);
        graph.update();

      },1000);

      //sparkline charts
      $('#projectbar1').sparkline('html', {type: 'bar', barColor: '#22beef', barWidth: 4, height: 20});
      $('#projectbar2').sparkline('html', {type: 'bar', barColor: '#cd97eb', barWidth: 4, height: 20});
      $('#projectbar3').sparkline('html', {type: 'bar', barColor: '#a2d200', barWidth: 4, height: 20});
      $('#projectbar4').sparkline('html', {type: 'bar', barColor: '#ffc100', barWidth: 4, height: 20});
      $('#projectbar5').sparkline('html', {type: 'bar', barColor: '#ff4a43', barWidth: 4, height: 20});
      $('#projectbar6').sparkline('html', {type: 'bar', barColor: '#a2d200', barWidth: 4, height: 20});

      //todo's
       $('#todolist li label').click(function() {
        $(this).toggleClass('done');
      });

      //load wysiwyg editor
      $('#quick-message-content').summernote({
        height: 158   //set editable area's height
      });

      //multiselect input
      $(".chosen-select").chosen({disable_search_threshold: 10});

      // Morris donut chart
      Morris.Donut({
        element: 'morris-donut-example',
        data: [
          {label: "Download Sales", value: 12},
          {label: "In-Store Sales", value: 30},
          {label: "Mail-Order Sales", value: 20}
        ],
        colors: ['#00a3d8', '#2fbbe8', '#72cae7']
      });

    })
      
    </script>
  </body>
</html>