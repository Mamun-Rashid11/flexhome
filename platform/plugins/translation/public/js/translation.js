jQuery(document).ready((function(t){t(".editable").editable({mode:"inline"}).on("hidden",(function(e,o){var n=t(e.currentTarget).data("locale");if("save"===o&&t(e.currentTarget).removeClass("status-0").addClass("status-1"),"save"===o||"nochange"===o){var a=t(e.currentTarget).closest("tr").next().find(".editable.locale-"+n);setTimeout((function(){a.editable("show")}),300)}})),t(".group-select").on("change",(function(e){var o=t(e.currentTarget).val();window.location.href=o?route("translations.index")+"?group="+encodeURI(t(e.currentTarget).val()):route("translations.index")})),t(".box-translation").on("click",".button-import-groups",(function(e){e.preventDefault();var o=t(e.currentTarget);o.addClass("button-loading");var n=o.closest("form");$httpClient.make().postForm(n.prop("action"),new FormData(n[0])).then((function(t){var e=t.data;Botble.showSuccess(e.message),n.removeClass("dirty")})).finally((function(){return o.removeClass("button-loading")}))})),t(document).on("click",".button-publish-groups",(function(e){e.preventDefault(),t("#confirm-publish-modal").modal("show")})),t("#confirm-publish-modal").on("click","#button-confirm-publish-groups",(function(e){e.preventDefault();var o=t(e.currentTarget);o.addClass("button-loading");var n=t(".button-publish-groups").closest("form");$httpClient.make().postForm(n.prop("action"),new FormData(n[0])).then((function(t){var e=t.data;Botble.showSuccess(e.message),n.removeClass("dirty"),o.closest(".modal").modal("hide")})).finally((function(){return o.removeClass("button-loading")}))}))}));