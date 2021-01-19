/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC <contact@vinades.vn>
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate 31/05/2010, 00:36
 */

/* Các tùy chỉnh JS của giao diện nên để vào đây */

$(document).ready(function(){
	// mở menu mobile
	$('.mobile-menu-toggle-btn').on('click',function(){
		$('body').addClass('open-menu');
	});
	// đóng menu mobile
	$('.mobile-menu-bg').on('click',function(){
		$('body').removeClass('open-menu');
	})
	$('.mobile-menu-wrap').addClass('animate');
});