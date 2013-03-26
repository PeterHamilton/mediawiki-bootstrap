// required jQuery version for Bootstrap should be pre-loaded into ResourceLoader
jqBootstrap = jQuery;
jQuery.noConflict(true);

jQuery( document ).ready( function( $ ) { 
    $(".tooltip-trigger").tooltip(); // Initialize all tooltips
    $(".popover-trigger").popover({
        placement: 'top',
        trigger: 'click'
    }); // Initialize all tooltips
});