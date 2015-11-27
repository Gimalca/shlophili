(function(){
	
	// USE STRICT
	"use strict";
	/////////////////////////////////////////////
	// HEADER
	/////////////////////////////////////////////
	
	var product = {
		init: function () {
			$(".hidden-buttons").hover(function() {
					jQuery(".owl-buttons", this).transition({opacity:1});
				}, function() {
					jQuery(".owl-buttons", this).transition({opacity:0});
			});	
			if (jQuery.fn.imagesLoaded) {	
				product.productResize();
				product.productResize_2();
				product.productResize_3();
				product.productResize_4();
				jQuery(window).bind("debouncedresize", function() {
					product.productResize();
					product.productResize_2();
					product.productResize_3();
					product.productResize_4();
				});	
			}
		},
		productResize: function() {
			jQuery('.product-list-slider').imagesLoaded(function() {
				
				var productImageHeight = jQuery(this).find('.item-product-image-box img').height();
				jQuery(this).find('.owl-prev').css('height', productImageHeight  + 'px');
				jQuery(this).find('.owl-next').css('height', productImageHeight  + 'px');
			});		
			return this;			
			
		},
		productResize_2: function() {
			jQuery('.blockslider').imagesLoaded(function() {
				var productImageHeight = jQuery(this).find('.image-block-slider img').height();
				console.log(productImageHeight);
				jQuery(this).find('.owl-prev').css('height', productImageHeight  + 'px');
				jQuery(this).find('.owl-next').css('height', productImageHeight  + 'px');
			});			
			return this;			
			
		},
		productResize_3: function() {
			jQuery('.brands-slider').imagesLoaded(function() {
				var productImageHeight = jQuery(this).find('.img-responsive').height();
				console.log(productImageHeight);
				jQuery(this).find('.owl-prev').css('height', productImageHeight  + 'px');
				jQuery(this).find('.owl-next').css('height', productImageHeight  + 'px');
			});			
			return this;			
			
		},
		productResize_4: function() {
			jQuery('.image-additional-product').imagesLoaded(function() {
				var productImageHeight = jQuery(this).find('.image-additional img').height();
				console.log(productImageHeight);
				jQuery(this).find('.owl-prev').css('height', productImageHeight  + 'px');
				jQuery(this).find('.owl-next').css('height', productImageHeight  + 'px');
			});			
			return this;			
			
		}
	};
	var onReady = {
		init: function(){
			
			//product.init();
		}
	};	
	var onLoad = {
		init: function(){
			product.init();
		}
	};
	jQuery(window).load(onLoad.init);	
	jQuery(document).ready(onReady.init);

})(jQuery);
