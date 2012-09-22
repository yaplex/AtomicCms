/* methods for jquery validate plugin. */ 

(function()
{

    function stripHtml(value)
    {
        // remove html tags and space chars
        return value.replace(/<.[^<>]*?>/g, ' ').replace(/&nbsp;|&#160;/gi, ' ')
        // remove numbers and punctuation
		.replace(/[0-9.(),;:!?%#$'"_+=\/-]*/g, '');
    }
    jQuery.validator.addMethod("maxWords", function(value, element, params)
    {
        var stripped = stripHtml(value);
        var matchedLen = stripped.split(/ +(?:\S)/).length;
        return this.optional(element) || matchedLen < params;
    }, jQuery.validator.format("Please enter {0} words or less."));

    jQuery.validator.addMethod("minWords", function(value, element, params)
    {
        return this.optional(element) || stripHtml(value).split(/ +(?:\S)/).length >= params;
    }, jQuery.validator.format("Please enter at least {0} words."));

    jQuery.validator.addMethod("rangeWords", function(value, element, params)
    {
        return this.optional(element) || stripHtml(value).split(/ +(?:\S)/).length >= params[0] && value.split(/ +(?:\S)/).length < params[1];
    }, jQuery.validator.format("Please enter between {0} and {1} words."));
})();
