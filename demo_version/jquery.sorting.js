$(document).ready(function(){
	$('button').on('click', function sortBy(){
		var $this =$(this),
			$sort_by = $this.data('sort'),
			sort_by_type = '';

		if ($sort_by === 'kitchen') 
			sort_by_type = 'text';
		else 
			sort_by_type = 'number'

		var $sort_table = $('.sort-table'),
			$main_table = $('.main-table');

		var xsl_template = '<xsl:for-each select="restaurants_in_Bulgaria/Restaurants/restaurant">'+
							'<xsl:sort select="./sort_by" data-type="sort_by_type"/>'+
								'new_tbody'+
							'</xsl:for-each>';
		var result_table = xsl_template.replace('sort_by', $sort_by)
									   .replace('sort_by_type', sort_by_type)
									   .replace('new_tbody', $main_table);
		// не може да се парсне съчетанието на html и xslt
		// var result = $sort_table.append().html(result_table);								   
	});
});