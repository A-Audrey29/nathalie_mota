"use strict";var WPFormsForms=window.WPFormsForms||{};WPFormsForms.Overview=WPFormsForms.Overview||function(e,o,l){var a={},r={},c={init:function(){l(c.ready)},ready:function(){c.initElements(),c.initTagsFilter(),c.adjustBulkEditTagsForm(),c.initEditTagsBulkActionItem(),c.events()},initElements:function(){a.$overview=l("#wpforms-overview"),a.$tagsFilterSelect=l(".wpforms-tags-filter select"),a.$tagsFilterButton=l(".wpforms-tags-filter button"),a.$listTableRows=l("#wpforms-overview #the-list"),a.$bulkEditTagsRows=l(".wpforms-bulk-edit-tags"),a.$bulkEditTagsForms=l(".wpforms-bulk-edit-tags .wpforms-edit-forms select"),a.$bulkEditTagsTags=l(".wpforms-bulk-edit-tags .wpforms-edit-tags select"),a.$bulkEditTagsMessage=l(".wpforms-bulk-edit-tags .wpforms-message")},events:function(){a.$overview.on("click",".wp-list-table .delete a, .wp-list-table .duplicate a",c.confirmSingleAction).on("click",".button.delete-all",c.confirmSingleAction).on("click",".bulkactions #doaction",c.confirmBulkAction).on("click","#wpforms-reset-filter .reset",c.resetSearch).on("click",".wp-list-table .wpforms-locations-count, .wp-list-table .row-actions .locations, .wp-list-table .wpforms-locations-close",c.formsLocator).on("click","#the-list .wpforms-column-tags-edit",c.editTagsClick).on("click","#the-list .wpforms-column-tags-edit-cancel",c.cancelEditTagsClick).on("click","#the-list .wpforms-column-tags-edit-save",c.saveEditTagsClick).on("click","#the-list .wpforms-bulk-edit-tags-cancel",c.cancelBulkEditTagsClick).on("click","#the-list .wpforms-bulk-edit-tags-save",c.saveBulkEditTagsClick).on("click",".wpforms-tags-filter .button",c.tagsFilterClick).on("click",".wpforms-manage-tags",c.manageTagsClick).on("keydown",".wpforms-column-tags-form input, .wpforms-bulk-edit-tags input",c.addCustomItemInput).on("removeItem",".choices select",c.editTagsRemoveItem),a.$bulkEditTagsForms.on("removeItem",c.bulkEditTagsFormRemoveItem),l("#adv-settings").on("change","input.hide-column-tog",c.adjustBulkEditTagsForm).on("change","#tags-hide",c.toggleTagsColumn),l(o).on("resize",_.debounce(c.adjustBulkEditTagsForm,200)),l(e).on("change",".wpforms-manage-tags-items input",c.manageTagsItemChange)},confirmSingleAction:function(e){e.preventDefault();var e=l(this),t=e.attr("href"),s=e.hasClass("delete-all")?wpforms_admin.form_delete_all_confirm:"";""===s&&(s=e.parent().hasClass("delete")?wpforms_admin.form_delete_confirm:wpforms_admin.form_duplicate_confirm),c.confirmModal(s,{url:t})},confirmBulkAction:function(e){var t=l(this).closest("form"),s=t.find("#bulk-action-selector-top").val();"edit_tags"===s?(e.preventDefault(),c.openBulkEditTags()):"delete"===s&&(e.preventDefault(),c.confirmModal(wpforms_admin.form_delete_n_confirm,{bulk:!0,form:t}))},confirmModal:function(e,t){l.confirm({title:wpforms_admin.heads_up,content:e,icon:"fa fa-exclamation-circle",type:"orange",buttons:{confirm:{text:wpforms_admin.ok,btnClass:"btn-confirm",keys:["enter"],action:function(){t.url?o.location=t.url:t.bulk&&t.form.trigger("submit")}},cancel:{text:wpforms_admin.cancel,keys:["esc"]}}})},alertModal:function(e,t){var s=wpforms_admin_forms_overview.strings.error;l.confirm({title:t.title||wpforms_admin.oops||!1,content:e?s+"<br>"+e:s,icon:"fa fa-exclamation-circle",type:t.type||"orange",buttons:{confirm:{text:wpforms_admin.ok,btnClass:"btn-confirm",keys:["enter"]}}})},resetSearch:function(e){l("#wpforms-overview-search-term").val(""),l(this).closest("form").trigger("submit")},formsLocator:function(e){let t=l("#wpforms-overview-table .wpforms-locations-pane");e.preventDefault();var s,e=l(e.target.closest("tr")),a=t.prev().prev(),o=a.find(".row-actions");return 0<t.length&&(t.prev().remove(),t.remove(),o.removeClass("visible"),a.is(e))||0!==(a=e.find(".locations-list")).length&&(s=e.find("td:not(.hidden)").length,a=a.html(),s=`<th></th><td colSpan="${s}" class="colspanchange">
				<span class="wpforms-locations-pane-title">${wpforms_forms_locator.paneTitle}</span>
				${a}
				<button type="button" class="button wpforms-locations-close alignleft">${wpforms_forms_locator.close}</button>
				</td>`,t=l('<tr class="wpforms-locations-pane"></tr>').html(s),e.after(t),e.after(l('<tr class="hidden"></tr>')),o.addClass("visible")),!1},editTagsClick:function(e){var t=l(this).closest("td"),s=t.closest("tbody"),a=t.find(".wpforms-column-tags-links"),o=t.find(".wpforms-column-tags-form"),i=o.find("select");e.preventDefault(),i.length||(t.append(wpforms_admin_forms_overview.edit_tags_form),i=(o=t.find(".wpforms-column-tags-form")).find("select")),s.find(".wpforms-column-tags-links.wpforms-hidden").removeClass("wpforms-hidden"),s.find(".wpforms-column-tags-form:not(.wpforms-hidden)").addClass("wpforms-hidden"),a.addClass("wpforms-hidden"),o.removeClass("wpforms-hidden"),r.currentEditTagsChoicesObj=c.initChoicesJS(i),r.currentEditTagsValueBackup=r.currentEditTagsChoicesObj.getValue(!0)},cancelEditTagsClick:function(e){var t=l(this).closest("td"),s=t.find(".wpforms-column-tags-links"),t=t.find(".wpforms-column-tags-form");r.currentEditTagsChoicesObj.removeActiveItems().setChoiceByValue(r.currentEditTagsValueBackup),s.removeClass("wpforms-hidden"),t.addClass("wpforms-hidden")},getTagsValue:function(e){if(!e||"function"!=typeof e.getValue)return[];for(var t=e.getValue(),s=[],a=0;a<t.length;a++)s.push({value:t[a].value,label:t[a].label});return s},saveEditTagsClick:function(e){var t=l(this),s=t.closest("td"),a=s.find(".wpforms-column-tags-links"),o=s.find(".wpforms-column-tags-form"),i=t.siblings(".wpforms-spinner"),n=o.find("select").data("choicesjs");t.addClass("wpforms-hidden"),i.removeClass("wpforms-hidden"),c.saveTagsAjax({forms:[a.data("form-id")],tags:c.getTagsValue(r.currentEditTagsChoicesObj)},function(e){a.find(".wpforms-column-tags-links-list").html(e.data.tags_links),a.data("tags",e.data.tags_ids),n&&n.clearStore().setChoices(wpforms_admin_forms_overview.all_tags_choices,"value","label",!0).setChoiceByValue(e.data.tags_ids.split(","))},function(){t.removeClass("wpforms-hidden"),i.addClass("wpforms-hidden"),a.removeClass("wpforms-hidden"),o.addClass("wpforms-hidden")})},saveTagsAjax:function(e,t,s){l.post(wpforms_admin.ajax_url,l.extend({action:"wpforms_admin_forms_overview_save_tags",nonce:wpforms_admin_forms_overview.strings.nonce},e)).done(function(e){e.success&&e.data?(c.updateAllTagsChoices(e.data.all_tags_choices),"function"==typeof t&&t(e)):c.alertModal(e.data||"",{})}).fail(function(e,t,s){c.alertModal(s,{})}).always(function(){"function"==typeof s&&s()})},updateAllTagsChoices:function(e){e&&(wpforms_admin_forms_overview.all_tags_choices=e,a.$tagsFilterSelect.each(function(){c.initChoicesJS(l(this))}),0<wpforms_admin_forms_overview.all_tags_choices.length)&&l(".wpforms-tags-filter, .wpforms-manage-tags").removeClass("wpforms-hidden")},initChoicesJS:function(e){var t,s;return!(!wpforms_admin_forms_overview.choicesjs_config||!e.length||"function"!=typeof o.Choices)&&(t=wpforms_admin_forms_overview.choicesjs_config,e.data("tags-filter")||(t.noResultsText=wpforms_admin_forms_overview.strings.add_new_tag),t.callbackOnInit=function(){e.closest(".choices__inner").append('<div class="choices__arrow"></div>')},s=(t="active"===e.data("choice")?e.data("choicesjs"):new Choices(e[0],t)).getValue(!0),t.clearStore().setChoices(wpforms_admin_forms_overview.all_tags_choices,"value","label",!0).setChoiceByValue(s),e.data("choicesjs",t),t)},initEditTagsBulkActionItem:function(){wpforms_admin_forms_overview.strings.is_tags_column_hidden&&l('.bulkactions option[value="edit_tags"]').addClass("wpforms-hidden")},initTagsFilter:function(){a.$tagsFilterSelect.each(function(){c.initChoicesJS(l(this))}),a.$tagsFilterSelect.on("change",function(){var e=a.$tagsFilterSelect.data("choicesjs"),t=a.$tagsFilterSelect.siblings('input[type="text"]');0<e.getValue(!0).length?t.attr("placeholder",""):t.attr("placeholder",wpforms_admin_forms_overview.strings.all_tags)})},tagsFilterClick:function(e){var t=l(this).closest(".wpforms-tags-filter").find("select").data("choicesjs"),s=new URL(wpforms_admin_forms_overview.strings.base_url),a=t.getValue(!0),t=wpforms_admin_forms_overview.all_tags_choices.filter(function(e){return-1<a.indexOf(e.value)});t.length&&s.searchParams.append("tags",_.map(t,"slug").join(",")),o.location.href=s.href},manageTagsClick:function(e){var t={title:wpforms_admin_forms_overview.strings.manage_tags_title,content:c.getManageTagsContent(),icon:"fa fa-tags",type:"blue",boxWidth:"550px",buttons:{cancel:{text:wpforms_admin.cancel,keys:["esc"]}},onOpenBefore:function(){this.$$confirm&&this.$$confirm.prop("disabled",!0),l("body").addClass("wpforms-manage-tags-modal")},onDestroy:function(){l("body").removeClass("wpforms-manage-tags-modal")}},s=c.getManageTagsConfirmSettings();s&&(t.buttons={confirm:s,cancel:t.buttons.cancel}),l.confirm(t)},getManageTagsContent:function(){var e=wpforms_admin_forms_overview.all_tags_choices;if(0===e.length)return wpforms_admin_forms_overview.strings.manage_tags_no_tags;for(var t=wpforms_admin_forms_overview.strings.manage_tags_desc,s=[],a=0;a<e.length;a++)s.push(`<input type="checkbox" value="${e[a].value}" id="wpforms-tag-${e[a].value}">
					<label for="wpforms-tag-${e[a].value}">
						${e[a].label}
						<span>(${e[a].count})</span>
					</label>`);return t+=`<div class="wpforms-manage-tags-items">${s.join("")}</div>
				<div class="wpforms-manage-tags-notice wpforms-hidden"></div>`},getManageTagsConfirmSettings:function(){return 0!==wpforms_admin_forms_overview.all_tags_choices.length&&{text:wpforms_admin_forms_overview.strings.manage_tags_save,btnClass:"btn-confirm",keys:["enter"],action:function(){var e=[];l(".wpforms-manage-tags-items input:checked").each(function(){e.push(l(this).val())}),l.post(wpforms_admin.ajax_url,{action:"wpforms_admin_forms_overview_delete_tags",nonce:wpforms_admin_forms_overview.strings.nonce,tags:e}).done(function(e){e.success&&e.data?c.manageTagsResultModal(e.data.deleted):c.alertModal(e.data||"",{})}).fail(function(e,t,s){c.alertModal(s,{})})}}},manageTagsItemChange:function(){var e=l(".wpforms-manage-tags-items input:checked").length,t=l(this).closest(".jconfirm-box").find(".btn-confirm"),s=l(".wpforms-manage-tags-notice"),a=1<e?wpforms_admin_forms_overview.strings.manage_tags_n_tags.replace("%d",e):wpforms_admin_forms_overview.strings.manage_tags_one_tag;t.prop("disabled",0===e),s.html(a).toggleClass("wpforms-hidden",0===e)},manageTagsResultModal:function(e){e=1===e?wpforms_admin_forms_overview.strings.manage_tags_one_deleted:wpforms_admin_forms_overview.strings.manage_tags_n_deleted.replace("%d",e);l.confirm({title:wpforms_admin_forms_overview.strings.manage_tags_result_title,content:`<p>${e}</p><p>${wpforms_admin_forms_overview.strings.manage_tags_result_text}</p>`,icon:"fa fa-exclamation-circle",type:"green",buttons:{confirm:{text:wpforms_admin_forms_overview.strings.manage_tags_btn_refresh,btnClass:"btn-confirm",keys:["enter"],action:function(){o.location.href=wpforms_admin_forms_overview.strings.base_url}}}})},openBulkEditTags:function(){var i=[],n=[],r=[];a.$listTableRows.find("input:checked").each(function(e){var t=l(this),s=t.closest("tr"),a=s.find(".column-name > a:first-child"),s=s.find(".wpforms-column-tags-links"),o=s.data("tags").toString()||"";1===s.data("is-editable")&&(i.push({value:t.val(),label:_.escape(a.text())}),n.push(t.val()),o=o.length?o.split(","):[],r=_.union(r,o))}),0!==i.length&&(a.$bulkEditTagsRows.removeClass("wpforms-hidden"),c.initChoicesJS(a.$bulkEditTagsForms).clearStore().setChoices(i,"value","label",!0).setChoiceByValue(n),c.initChoicesJS(a.$bulkEditTagsTags).removeActiveItems().setChoiceByValue(r),c.updateBulkEditTagsFormMessage(n))},updateBulkEditTagsFormMessage:function(e){var t=wpforms_admin_forms_overview.strings.bulk_edit_n_forms;1===e.length&&(t=wpforms_admin_forms_overview.strings.bulk_edit_one_form),a.$bulkEditTagsMessage.html(t.replace("%d",e.length))},bulkEditTagsFormRemoveItem:function(e){e=l(e.target).data("choicesjs").getValue(!0);0===e.length&&c.cancelBulkEditTagsClick(),c.updateBulkEditTagsFormMessage(e)},editTagsRemoveItem:function(t){var e,s,a;0<=_.map(wpforms_admin_forms_overview.all_tags_choices,"value").indexOf(t.detail.value)||(s=(e=l(t.target).data("choicesjs")).getValue(!0),a=_.filter(e._currentState.choices,function(e){return e.value!==t.detail.value}),e.clearStore().setChoices(a,"value","label",!0).setChoiceByValue(s))},adjustBulkEditTagsForm:function(){var e=l(".wp-list-table thead .manage-column").not(".hidden"),t=0;l(".wpforms-bulk-edit-tags td").attr("colspan",e.length);for(var s=2;s<e.length;s++)t+=e[s].offsetWidth||e.eq(s).outerWidth();t="calc( 100% - "+(t-10)+"px )",o.innerWidth<782&&(t="calc( 100% - 300px )"),a.$bulkEditTagsForms.closest(".wpforms-edit-forms").css("width",t)},toggleTagsColumn:function(){l('.wpforms-tags-filter, .wpforms-manage-tags, .bulkactions option[value="edit_tags"]').toggleClass("wpforms-hidden",!l(this).is(":checked")||0===wpforms_admin_forms_overview.all_tags_choices.length)},cancelBulkEditTagsClick:function(){a.$bulkEditTagsRows.addClass("wpforms-hidden")},saveBulkEditTagsClick:function(e){var t=l(this).find(".wpforms-loading-spinner"),i={forms:a.$bulkEditTagsForms.data("choicesjs").getValue(!0),tags:c.getTagsValue(a.$bulkEditTagsTags.data("choicesjs"))};t.removeClass("wpforms-hidden"),c.saveTagsAjax(i,function(o){l("#the-list .tags.column-tags").each(function(){var e=l(this),t=e.find(".wpforms-column-tags-links"),s=t.data("form-id")+"",e=e.find(".wpforms-column-tags-form select"),a=e.data("choicesjs");i.forms.indexOf(s)<0||(t.data("tags",o.data.tags_ids),t.find(".wpforms-column-tags-links-list").html(o.data.tags_links),e.html(o.data.tags_options),a&&a.clearStore().setChoices(wpforms_admin_forms_overview.all_tags_choices,"value","label",!0).setChoiceByValue(o.data.tags_ids.split(",")))})},function(){t.addClass("wpforms-hidden"),a.$bulkEditTagsRows.addClass("wpforms-hidden")})},addCustomItemInput:function(e){var t,s;["Enter",","].indexOf(e.key)<0||(e.preventDefault(),e.stopPropagation(),(t=l(this).closest(".choices").find("select").data("choicesjs"))&&0!==e.target.value.length&&(e=_.escape(e.target.value).trim(),s=_.map(t.getValue(),"label").map(function(e){return e.toLowerCase().trim()}),""===e||0<=s.indexOf(e.toLowerCase())?t.clearInput():c.addCustomItemInputTag(t,e)))},addCustomItemInputTag:function(e,t){var s=_.find(wpforms_admin_forms_overview.all_tags_choices,{label:t});s&&s.value?e.setChoiceByValue(s.value):e.setChoices([{value:t,label:t,selected:!0}],"value","label",!1),e.clearInput()}};return c}(document,window,jQuery),WPFormsForms.Overview.init();