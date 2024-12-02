define("ace/theme/falcon",["require","exports","module","ace/lib/dom"], function(require, exports, module) {/* ***** BEGIN LICENSE BLOCK *****
 * Distributed under the BSD license:
 *
 * Copyright (c) 2010, Ajax.org B.V.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *     * Redistributions of source code must retain the above copyright
 *       notice, this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above copyright
 *       notice, this list of conditions and the following disclaimer in the
 *       documentation and/or other materials provided with the distribution.
 *     * Neither the name of Ajax.org B.V. nor the
 *       names of its contributors may be used to endorse or promote products
 *       derived from this software without specific prior written permission.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL AJAX.ORG B.V. BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * ***** END LICENSE BLOCK ***** */


exports.isDark = true;
exports.cssClass = "ace-falcon";
exports.cssText = ".ace-falcon .ace_gutter {\
background: #020221;\
color: rgb(91,91,109)\
}\
.ace-falcon .ace_print-margin {\
width: 1px;\
background: #e8e8e8\
}\
.ace-falcon {\
background-color: #020221;\
color: #b4b4b9\
}\
.ace-falcon .ace_cursor {\
color: #ddcfbf\
}\
.ace-falcon .ace_marker-layer .ace_selection {\
background: #dcfbfb\
}\
.ace-falcon.ace_multiselect .ace_selection.ace_start {\
box-shadow: 0 0 3px 0px #020221;\
border-radius: 2px\
}\
.ace-falcon .ace_marker-layer .ace_step {\
background: rgb(198, 219, 174)\
}\
.ace-falcon .ace_marker-layer .ace_bracket {\
margin: -1px 0 0 -1px;\
border: 1px solid #073642\
}\
.ace-falcon .ace_marker-layer .ace_active-line {\
background: #073642\
}\
.ace-falcon .ace_gutter-active-line {\
background-color: #073642\
}\
.ace-falcon .ace_marker-layer .ace_selected-word {\
border: 1px solid #dcfbfb\
}\
.ace-falcon .ace_fold {\
background-color: #ddcfbf;\
border-color: #b4b4b9\
}\
.ace-falcon .ace_keyword {\
color: #ffc552\
}\
.ace-falcon .ace_constant.ace_language {\
color: #dfdfe5\
}\
.ace-falcon .ace_constant.ace_numeric {\
color: #dfdfe5\
}\
.ace-falcon .ace_constant.ace_character {\
color: #dfdfe5\
}\
.ace-falcon .ace_constant.ace_other {\
color: #dfdfe5\
}\
.ace-falcon .ace_support.ace_function {\
color: #ddcfbf\
}\
.ace-falcon .ace_support.ace_class {\
color: #9f97cc\
}\
.ace-falcon .ace_support.ace_type {\
color: #9f97cc\
}\
.ace-falcon .ace_storage {\
color: #ff761a\
}\
.ace-falcon .ace_string {\
color: #dfdfe5\
}\
.ace-falcon .ace_string.ace_regexp {\
color: #ff761a\
}\
.ace-falcon .ace_comment {\
color: #787882\
}\
.ace-falcon .ace_variable {\
color: #ddcfbf\
}\
.ace-falcon .ace_variable.ace_language {\
color: #99a4bc\
}\
.ace-falcon .ace_entity.ace_other.ace_attribute-name {\
color: #99a4bc\
}\
.ace-falcon .ace_entity.ace_name.ace_function {\
color: #ddcfbf\
}\
.ace-falcon .ace_entity.ace_name.ace_tag {\
color: #99a4bc\
}";

var dom = require("../lib/dom");
dom.importCssString(exports.cssText, exports.cssClass);

});                (function() {
                    window.require(["ace/theme/falcon"], function(m) {
                        if (typeof module == "object" && typeof exports == "object" && module) {
                            module.exports = m;
                        }
                    });
                })();
            