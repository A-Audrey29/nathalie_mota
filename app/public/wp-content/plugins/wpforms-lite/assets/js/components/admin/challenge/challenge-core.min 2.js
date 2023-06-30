"use strict";var WPFormsChallenge=window.WPFormsChallenge||{};WPFormsChallenge.core=window.WPFormsChallenge.core||function(t,o,s){var n={},l={},a={},r={initialSecondsLeft:60*WPFormsChallenge.admin.l10n.minutes_left,loadId:function(){return localStorage.getItem("wpformsChallengeTimerId")},saveId:function(e){localStorage.setItem("wpformsChallengeTimerId",e)},run:function(e){var t;if(5!==n.loadStep())return t=setInterval(function(){n.updateTimerUI(e),--e<0&&(r.saveSecondsLeft(0),clearInterval(t))},1e3),r.saveId(t),t},pause:function(){var e;0!==r.getSecondsLeft()&&5!==n.loadStep()&&(e=r.loadId(),clearInterval(e),e=s("#wpforms-challenge-timer").data("seconds-left"))&&r.saveSecondsLeft(e)},resume:function(){var e,t=r.getSecondsLeft();0!==t&&5!==n.loadStep()&&((e=r.loadId())&&clearInterval(e),r.run(t))},clear:function(){localStorage.removeItem("wpformsChallengeSecondsLeft"),localStorage.removeItem("wpformsChallengeTimerId"),localStorage.removeItem("wpformsChallengeTimerStatus"),s("#wpforms-challenge-timer").removeData("seconds-left")},getSecondsLeft:function(){var e=localStorage.getItem("wpformsChallengeSecondsLeft");return parseInt(e,10)||0},getSecondsSpent:function(e){return e=e||r.getSecondsLeft(),r.initialSecondsLeft-e},saveSecondsLeft:function(e){localStorage.setItem("wpformsChallengeSecondsLeft",e)},getMinutesFormatted:function(e){return e=e||r.getSecondsLeft(),Math.floor(e/60)},getSecondsFormatted:function(e){return(e=e||r.getSecondsLeft())%60},getFormatted:function(e){e=e||r.getSecondsLeft();var t=r.getMinutesFormatted(e),e=r.getSecondsFormatted(e);return t+(9<e?":":":0")+e}};return n={timer:r,init:function(){s(n.ready),s(o).on("load",function(){"function"==typeof s.ready.then?s.ready.then(n.load):n.load()})},ready:function(){n.setup(),n.events()},load:function(){"started"===wpforms_challenge_admin.option.status&&n.timer.run(n.timer.getSecondsLeft())},setup:function(){var e,t=n.timer.loadId();t&&(clearInterval(t),e=n.timer.getSecondsLeft()),t&&0!==n.loadStep()&&"inited"!==wpforms_challenge_admin.option.status||(e=n.timer.initialSecondsLeft),n.initElements(),n.refreshStep(),n.initListUI(null,!0),n.updateListUI(),n.updateTimerUI(e)},events:function(){s([o,t]).on("blur",n.pauseChallenge).on("focus",n.resumeChallenge).on("click",".wpforms-challenge-done-btn",n.resumeChallenge),a.$btnPause.on("click",n.pauseChallenge),a.$btnResume.on("click",n.resumeChallenge),a.$listSteps.on("click",".wpforms-challenge-item-current",n.refreshPage)},initElements:function(){a={$challenge:s(".wpforms-challenge"),$btnPause:s(".wpforms-challenge-pause"),$btnResume:s(".wpforms-challenge-resume"),$listSteps:s(".wpforms-challenge-list"),$listBlock:s(".wpforms-challenge-list-block"),$listBtnToggle:s(".wpforms-challenge-list-block .toggle-list"),$progressBar:s(".wpforms-challenge-bar"),$tooltipBtnDone:function(){return s(".wpforms-challenge-tooltip .wpforms-challenge-done-btn")}}},loadStep:function(){var e=localStorage.getItem("wpformsChallengeStep");return parseInt(e,10)||0},saveStep:function(e){return localStorage.setItem("wpformsChallengeStep",e),WPFormsChallenge.admin.saveChallengeOption({step:e})},refreshStep:function(){var e=a.$challenge.data("wpforms-challenge-saved-step"),e=parseInt(e,10)||0;n.loadStep()!==e&&n.saveStep(e)},stepCompleted:function(e){return n.updateListUI(e),n.updateTooltipUI(e),n.saveStep(e)},initTooltips:function(n,e,t){var o,l;void 0!==s.fn.tooltipster&&(o=s('<span class="wpforms-challenge-dot wpforms-challenge-dot-step'+n+'" data-wpforms-challenge-step="'+n+'">&nbsp;</span>'),l={content:s("#tooltip-content"+n),trigger:null,interactive:!0,animationDuration:0,delay:0,theme:["tooltipster-default","wpforms-challenge-tooltip"],side:["top"],distance:3,functionReady:function(e,t){s(t.tooltip).addClass("wpforms-challenge-tooltip-step"+n),4===n||3===n?e.option("side","right"):1===n&&e.option("side","left"),e.reposition()}},"object"==typeof t&&null!==t&&s.extend(l,t),o.insertAfter(e).tooltipster(l))},updateTooltipUI:function(e){var l;e=e||n.loadStep(),l=e+1,s(".wpforms-challenge-dot").each(function(e,t){var n=s(t),o=n.data("wpforms-challenge-step");o<l&&n.addClass("wpforms-challenge-dot-completed"),l<o&&n.addClass("wpforms-challenge-dot-next"),o===l&&n.removeClass("wpforms-challenge-dot-completed wpforms-challenge-dot-next"),setTimeout(function(){n.is(":visible")&&o===l?n.tooltipster("open"):n.tooltipster("close")},0)})},initListUI:function(e,t){var n;e=e||wpforms_challenge_admin.option.status,-1<["started","paused"].indexOf(e)&&(a.$listBlock.find("p").hide(),a.$listBtnToggle.show(),a.$progressBar.show(),(n=a.$listBlock.find(".list-block-button.challenge-skip")).attr("title",n.data("cancel-title")).removeClass("challenge-skip").addClass("challenge-cancel")),t&&(s(o).height()<900&&""===wpforms_challenge_admin.option.window_closed||"1"===wpforms_challenge_admin.option.window_closed)&&(a.$listBlock.find("p").hide(),a.$listBtnToggle.trigger("click")),"paused"===e?(a.$challenge.addClass("paused"),a.$btnPause.hide(),a.$btnResume.show()):(setTimeout(function(){a.$btnPause.show()},0),a.$challenge.removeClass("paused"),a.$btnResume.hide())},updateListUI:function(e){e=e||n.loadStep(),a.$listSteps.find("li").slice(0,e).addClass("wpforms-challenge-item-completed").removeClass("wpforms-challenge-item-current"),a.$listSteps.find("li").eq(e).addClass("wpforms-challenge-item-current"),a.$progressBar.find("div").css("width",20*e+"%")},updateTimerUI:function(e){e&&!isNaN(e)&&"0"!==e||(e=0),n.timer.saveSecondsLeft(e),s("#wpforms-challenge-timer").text(n.timer.getFormatted(e)).data("seconds-left",e)},removeChallengeUI:function(){s(".wpforms-challenge-dot").remove(),a.$challenge.remove()},clearLocalStorage:function(){localStorage.removeItem("wpformsChallengeStep"),n.timer.clear()},pauseChallenge:function(e){"IFRAME"!==t.activeElement.tagName&&"started"===wpforms_challenge_admin.option.status&&(l.pauseEvent=e.type,n.pauseResumeChallenge("pause"))},resumeChallenge:function(e){if("paused"===wpforms_challenge_admin.option.status){if("focus"!==e.type||"blur"===l.pauseEvent)return l.resumeEvent=e.type,n.pauseResumeChallenge("resume");delete l.pauseEvent}},pauseResumeChallenge:function(e){n.timer[e="pause"===e?e:"resume"]();e={status:"pause"===e?"paused":"started",seconds_spent:n.timer.getSecondsSpent(),seconds_left:n.timer.getSecondsLeft()};return n.initListUI(e.status),WPFormsChallenge.admin.saveChallengeOption(e)},resumeChallengeAndExec:function(e,t){"function"!=typeof t&&(t=function(){}),"paused"===wpforms_challenge_admin.option.status&&"object"==typeof(e=n.resumeChallenge(e))&&"function"==typeof e.done?e.done(t):t()},refreshPage:function(e){o.location.reload(!0)},isGutenberg:function(){return"undefined"!=typeof wp&&Object.prototype.hasOwnProperty.call(wp,"blocks")},triggerPageSave:function(){n.isGutenberg()?n.gutenbergPageSave():s("#post #publish").trigger("click")},gutenbergPageSave:function(){var o=s(".block-editor"),e=o.find(".editor-post-publish-button.editor-post-publish-button__button");(0<e.length?e:((e={targetNode:o.find(".edit-post-layout, .block-editor-editor-skeleton__publish > div")[0],config:{childList:!0,attributes:!0,subtree:!0},callback:function(e,t){var n=o.find(".editor-post-publish-button, .editor-post-publish-panel__header-publish-button .editor-post-publish-button__button");0<n.length&&(n.trigger("click"),t.disconnect())}}).observer=new MutationObserver(e.callback),e.observer.observe(e.targetNode,e.config),o.find(".edit-post-toggle-publish-panel__button, .editor-post-publish-panel__toggle.editor-post-publish-button__button"))).trigger("click")}}}(document,window,jQuery),WPFormsChallenge.core.init();