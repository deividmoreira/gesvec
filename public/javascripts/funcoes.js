jQuery.noConflict();
jQuery(document).ready(function() {
	
	jQuery('select.autocomplete').select_autocomplete();
	
	jQuery('input.maskData').datepicker({
		dayNamesMin: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sab'],
		monthNames: ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'],
		dateFormat: 'dd/mm/yy', showOn: 'button', buttonImage: 'imagens/calendar.png', buttonImageOnly: true
	});
	jQuery('input.maskCpf').setMask('cpf');	
	jQuery('input.maskData').setMask('date');
	jQuery('input.maskFone').setMask('phone');
	jQuery('#login #login').focus();
	jQuery("input[type=text], :radio").focus(function() {
         jQuery(this).addClass("comFoco");
    });
	jQuery("input[type=text], :radio").blur(function() {
         jQuery(this).removeClass("comFoco");
    });
	
	jQuery("table tr").hover(
	function() {
         jQuery(this).addClass("trHover");
    },
	function() {
         jQuery(this).removeClass("trHover");	
	});
	jQuery("table tr:nth-child(even)").addClass("trDestaque");
	
	jQuery("#cadastroPessoa").validate({
		rules: {
			email: {
				required: true,
				email: true
			}
		},
		messages: {
			email: {
				required: " Por favor informe o email!",
				email: " Por favor, informe um email válido!"
			}
		}
	});

	
});
