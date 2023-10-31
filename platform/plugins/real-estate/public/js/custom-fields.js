(()=>{function t(e){return t="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(t){return typeof t}:function(t){return t&&"function"==typeof Symbol&&t.constructor===Symbol&&t!==Symbol.prototype?"symbol":typeof t},t(e)}function e(){"use strict";/*! regenerator-runtime -- Copyright (c) 2014-present, Facebook, Inc. -- license (MIT): https://github.com/facebook/regenerator/blob/main/LICENSE */e=function(){return n};var r,n={},o=Object.prototype,i=o.hasOwnProperty,a=Object.defineProperty||function(t,e,r){t[e]=r.value},c="function"==typeof Symbol?Symbol:{},u=c.iterator||"@@iterator",l=c.asyncIterator||"@@asyncIterator",s=c.toStringTag||"@@toStringTag";function f(t,e,r){return Object.defineProperty(t,e,{value:r,enumerable:!0,configurable:!0,writable:!0}),t[e]}try{f({},"")}catch(r){f=function(t,e,r){return t[e]=r}}function p(t,e,r,n){var o=e&&e.prototype instanceof _?e:_,i=Object.create(o.prototype),c=new S(n||[]);return a(i,"_invoke",{value:k(t,r,c)}),i}function d(t,e,r){try{return{type:"normal",arg:t.call(e,r)}}catch(t){return{type:"throw",arg:t}}}n.wrap=p;var h="suspendedStart",m="suspendedYield",y="executing",v="completed",g={};function _(){}function w(){}function b(){}var x={};f(x,u,(function(){return this}));var O=Object.getPrototypeOf,L=O&&O(O(G([])));L&&L!==o&&i.call(L,u)&&(x=L);var j=b.prototype=_.prototype=Object.create(x);function E(t){["next","throw","return"].forEach((function(e){f(t,e,(function(t){return this._invoke(e,t)}))}))}function P(e,r){function n(o,a,c,u){var l=d(e[o],e,a);if("throw"!==l.type){var s=l.arg,f=s.value;return f&&"object"==t(f)&&i.call(f,"__await")?r.resolve(f.__await).then((function(t){n("next",t,c,u)}),(function(t){n("throw",t,c,u)})):r.resolve(f).then((function(t){s.value=t,c(s)}),(function(t){return n("throw",t,c,u)}))}u(l.arg)}var o;a(this,"_invoke",{value:function(t,e){function i(){return new r((function(r,o){n(t,e,r,o)}))}return o=o?o.then(i,i):i()}})}function k(t,e,n){var o=h;return function(i,a){if(o===y)throw new Error("Generator is already running");if(o===v){if("throw"===i)throw a;return{value:r,done:!0}}for(n.method=i,n.arg=a;;){var c=n.delegate;if(c){var u=F(c,n);if(u){if(u===g)continue;return u}}if("next"===n.method)n.sent=n._sent=n.arg;else if("throw"===n.method){if(o===h)throw o=v,n.arg;n.dispatchException(n.arg)}else"return"===n.method&&n.abrupt("return",n.arg);o=y;var l=d(t,e,n);if("normal"===l.type){if(o=n.done?v:m,l.arg===g)continue;return{value:l.arg,done:n.done}}"throw"===l.type&&(o=v,n.method="throw",n.arg=l.arg)}}}function F(t,e){var n=e.method,o=t.iterator[n];if(o===r)return e.delegate=null,"throw"===n&&t.iterator.return&&(e.method="return",e.arg=r,F(t,e),"throw"===e.method)||"return"!==n&&(e.method="throw",e.arg=new TypeError("The iterator does not provide a '"+n+"' method")),g;var i=d(o,t.iterator,e.arg);if("throw"===i.type)return e.method="throw",e.arg=i.arg,e.delegate=null,g;var a=i.arg;return a?a.done?(e[t.resultName]=a.value,e.next=t.nextLoc,"return"!==e.method&&(e.method="next",e.arg=r),e.delegate=null,g):a:(e.method="throw",e.arg=new TypeError("iterator result is not an object"),e.delegate=null,g)}function T(t){var e={tryLoc:t[0]};1 in t&&(e.catchLoc=t[1]),2 in t&&(e.finallyLoc=t[2],e.afterLoc=t[3]),this.tryEntries.push(e)}function $(t){var e=t.completion||{};e.type="normal",delete e.arg,t.completion=e}function S(t){this.tryEntries=[{tryLoc:"root"}],t.forEach(T,this),this.reset(!0)}function G(e){if(e||""===e){var n=e[u];if(n)return n.call(e);if("function"==typeof e.next)return e;if(!isNaN(e.length)){var o=-1,a=function t(){for(;++o<e.length;)if(i.call(e,o))return t.value=e[o],t.done=!1,t;return t.value=r,t.done=!0,t};return a.next=a}}throw new TypeError(t(e)+" is not iterable")}return w.prototype=b,a(j,"constructor",{value:b,configurable:!0}),a(b,"constructor",{value:w,configurable:!0}),w.displayName=f(b,s,"GeneratorFunction"),n.isGeneratorFunction=function(t){var e="function"==typeof t&&t.constructor;return!!e&&(e===w||"GeneratorFunction"===(e.displayName||e.name))},n.mark=function(t){return Object.setPrototypeOf?Object.setPrototypeOf(t,b):(t.__proto__=b,f(t,s,"GeneratorFunction")),t.prototype=Object.create(j),t},n.awrap=function(t){return{__await:t}},E(P.prototype),f(P.prototype,l,(function(){return this})),n.AsyncIterator=P,n.async=function(t,e,r,o,i){void 0===i&&(i=Promise);var a=new P(p(t,e,r,o),i);return n.isGeneratorFunction(e)?a:a.next().then((function(t){return t.done?t.value:a.next()}))},E(j),f(j,s,"Generator"),f(j,u,(function(){return this})),f(j,"toString",(function(){return"[object Generator]"})),n.keys=function(t){var e=Object(t),r=[];for(var n in e)r.push(n);return r.reverse(),function t(){for(;r.length;){var n=r.pop();if(n in e)return t.value=n,t.done=!1,t}return t.done=!0,t}},n.values=G,S.prototype={constructor:S,reset:function(t){if(this.prev=0,this.next=0,this.sent=this._sent=r,this.done=!1,this.delegate=null,this.method="next",this.arg=r,this.tryEntries.forEach($),!t)for(var e in this)"t"===e.charAt(0)&&i.call(this,e)&&!isNaN(+e.slice(1))&&(this[e]=r)},stop:function(){this.done=!0;var t=this.tryEntries[0].completion;if("throw"===t.type)throw t.arg;return this.rval},dispatchException:function(t){if(this.done)throw t;var e=this;function n(n,o){return c.type="throw",c.arg=t,e.next=n,o&&(e.method="next",e.arg=r),!!o}for(var o=this.tryEntries.length-1;o>=0;--o){var a=this.tryEntries[o],c=a.completion;if("root"===a.tryLoc)return n("end");if(a.tryLoc<=this.prev){var u=i.call(a,"catchLoc"),l=i.call(a,"finallyLoc");if(u&&l){if(this.prev<a.catchLoc)return n(a.catchLoc,!0);if(this.prev<a.finallyLoc)return n(a.finallyLoc)}else if(u){if(this.prev<a.catchLoc)return n(a.catchLoc,!0)}else{if(!l)throw new Error("try statement without catch or finally");if(this.prev<a.finallyLoc)return n(a.finallyLoc)}}}},abrupt:function(t,e){for(var r=this.tryEntries.length-1;r>=0;--r){var n=this.tryEntries[r];if(n.tryLoc<=this.prev&&i.call(n,"finallyLoc")&&this.prev<n.finallyLoc){var o=n;break}}o&&("break"===t||"continue"===t)&&o.tryLoc<=e&&e<=o.finallyLoc&&(o=null);var a=o?o.completion:{};return a.type=t,a.arg=e,o?(this.method="next",this.next=o.finallyLoc,g):this.complete(a)},complete:function(t,e){if("throw"===t.type)throw t.arg;return"break"===t.type||"continue"===t.type?this.next=t.arg:"return"===t.type?(this.rval=this.arg=t.arg,this.method="return",this.next="end"):"normal"===t.type&&e&&(this.next=e),g},finish:function(t){for(var e=this.tryEntries.length-1;e>=0;--e){var r=this.tryEntries[e];if(r.finallyLoc===t)return this.complete(r.completion,r.afterLoc),$(r),g}},catch:function(t){for(var e=this.tryEntries.length-1;e>=0;--e){var r=this.tryEntries[e];if(r.tryLoc===t){var n=r.completion;if("throw"===n.type){var o=n.arg;$(r)}return o}}throw new Error("illegal catch attempt")},delegateYield:function(t,e,n){return this.delegate={iterator:G(t),resultName:e,nextLoc:n},"next"===this.method&&(this.arg=r),g}},n}function r(t,e,r,n,o,i,a){try{var c=t[i](a),u=c.value}catch(t){return void r(t)}c.done?e(u):Promise.resolve(u).then(n,o)}function n(t){return function(){var e=this,n=arguments;return new Promise((function(o,i){var a=t.apply(e,n);function c(t){r(a,o,i,c,u,"next",t)}function u(t){r(a,o,i,c,u,"throw",t)}c(void 0)}))}}function o(t,e){var r=Object.keys(t);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(t);e&&(n=n.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),r.push.apply(r,n)}return r}function i(t){for(var e=1;e<arguments.length;e++){var r=null!=arguments[e]?arguments[e]:{};e%2?o(Object(r),!0).forEach((function(e){c(t,e,r[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(r)):o(Object(r)).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(r,e))}))}return t}function a(t,e){for(var r=0;r<e.length;r++){var n=e[r];n.enumerable=n.enumerable||!1,n.configurable=!0,"value"in n&&(n.writable=!0),Object.defineProperty(t,u(n.key),n)}}function c(t,e,r){return(e=u(e))in t?Object.defineProperty(t,e,{value:r,enumerable:!0,configurable:!0,writable:!0}):t[e]=r,t}function u(e){var r=function(e,r){if("object"!==t(e)||null===e)return e;var n=e[Symbol.toPrimitive];if(void 0!==n){var o=n.call(e,r||"default");if("object"!==t(o))return o;throw new TypeError("@@toPrimitive must return a primitive value.")}return("string"===r?String:Number)(e)}(e,"string");return"symbol"===t(r)?r:String(r)}$(document).ready((function(){var t=function(){function t(){!function(t,e){if(!(t instanceof e))throw new TypeError("Cannot call a class as a function")}(this,t),c(this,"$jobCustomFieldsWrap",$(".job-custom-fields-wrap")),c(this,"$customFieldList",$("#custom-field-list")),c(this,"options",window.jobCustomFields)}var r,o,u,l;return r=t,o=[{key:"init",value:function(){var t=this;this.actions(),this.options.customFields.forEach((function(e){var r=t.$customFieldList.find(".row").length,n={id:e.id,name:e.name,value:e.value};e.custom_field_id&&"dropdown"===e.custom_field.type?t.generateDropdownTemplate(i(i({},n),{},{custom_field_id:e.custom_field_id,selectOptions:e.custom_field.options}),r,!0):t.generateTextTemplate(i(i({},n),{},{custom_field_id:e.custom_field_id}),r,!!e.custom_field_id)}))}},{key:"actions",value:function(){var t=this;this.$jobCustomFieldsWrap.on("click","#add-new",n(e().mark((function r(){var n,o,i;return e().wrap((function(e){for(;;)switch(e.prev=e.next){case 0:if(""!==(n=$("#custom-field-id").val())){e.next=5;break}t.generateTextTemplate({},t.$customFieldList.find(".row").length),e.next=10;break;case 5:return e.next=7,t.addFromGlobal(n);case 7:o=e.sent.data,i=t.$customFieldList.find(".row").length,"dropdown"===o.type?t.generateDropdownTemplate({custom_field_id:o.id,name:o.name,selectOptions:o.options},i,!0):"text"===o.type&&t.generateTextTemplate({custom_field_id:o.id,name:o.name},i,!0);case 10:$("#addNewCustomFieldModal").modal("toggle");case 11:case"end":return e.stop()}}),r)})))).on("click",".remove-custom-field",(function(){$(this).parent().parent().parent().remove()}))}},{key:"addFromGlobal",value:(l=n(e().mark((function t(r){return e().wrap((function(t){for(;;)switch(t.prev=t.next){case 0:return t.next=2,fetch("".concat(this.options.ajax,"?id=").concat(r));case 2:return t.next=4,t.sent.json();case 4:return t.abrupt("return",t.sent);case 5:case"end":return t.stop()}}),t,this)}))),function(t){return l.apply(this,arguments)})},{key:"generateTextTemplate",value:function(t,e){var r=arguments.length>2&&void 0!==arguments[2]&&arguments[2],n=$("#custom-field-template").html().replace(/__id__/g,t.id||"").replace(/__custom_field_id__/g,t.custom_field_id||"").replace(/__name__/g,t.name||"").replace(/__value__/g,t.value||"").replace(/__index__/g,e).replace(/__custom_field_input_class__/g,r?"form-control-disabled":"");this.$customFieldList.append(n),t.custom_field_id&&this.$customFieldList.find('[data-index="'.concat(e,'"] .custom-field-name')).prop("readonly",!0)}},{key:"generateDropdownTemplate",value:function(t,e){var r=arguments.length>2&&void 0!==arguments[2]&&arguments[2],n="";$.each(t.selectOptions,(function(e,r){n+='<option value="'.concat(r.value,'" ').concat(t.value===r.value?"selected":"",">").concat(r.label,"</option>")}));var o=$("#custom-field-dropdown-template").html().replace(/__id__/g,t.id||"").replace(/__custom_field_id__/g,t.custom_field_id||"").replace(/__name__/g,t.name||"").replace(/__index__/g,e).replace(/__selectOptions__/g,n).replace(/__custom_field_input_class__/g,r?"form-control-disabled":"");this.$customFieldList.append(o),t.custom_field_id&&this.$customFieldList.find('[data-index="'.concat(e,'"] .custom-field-name')).prop("readonly",!0)}}],o&&a(r.prototype,o),u&&a(r,u),Object.defineProperty(r,"prototype",{writable:!1}),t}();(new t).init()}))})();