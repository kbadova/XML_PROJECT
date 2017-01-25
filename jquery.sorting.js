$(document).ready(function(){
	$('button').on('click', function sortBy(){
		var $this =$(this),
			sort_by = $this.data('sort');

		
		console.log($('.main-table').children())
		// $('#SortingBy' + argument).children().last().attr('select', 'descending');
		//  $('#SortingBy' + argument).attr('class', 'show');
	});

   // jQuery methods go here...

});