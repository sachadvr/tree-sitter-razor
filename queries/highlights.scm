; Highlights pour les nodes HTML nommés

(element (tag_name) @tag)
(element (html_attribute (html_attribute_name) @attribute))
(element (html_attribute (html_attribute_value) @string))
(element (html_text) @text)

; Razor expressions
(razor_explicit_expression) @razor.expression
(razor_implicit_expression) @razor.expression
(razor_await_expression) @razor.expression

; Razor directives
(razor_page_directive) @razor.directive
(razor_using_directive) @razor.directive
(razor_model_directive) @razor.directive
(razor_inject_directive) @razor.directive
(razor_layout_directive) @razor.directive
(razor_inherits_directive) @razor.directive
(razor_attribute_directive) @razor.directive
(razor_implements_directive) @razor.directive
(razor_typeparam_directive) @razor.directive
(razor_namespace_directive) @razor.directive
(razor_rendermode_directive) @razor.directive
(razor_preservewhitespace_directive) @razor.directive

; Razor blocks
(razor_block) @razor.block

; Razor control flow
(razor_if) @razor.control
(razor_else_if) @razor.control
(razor_else) @razor.control
(razor_switch) @razor.control
(razor_for) @razor.control
(razor_foreach) @razor.control
(razor_while) @razor.control
(razor_do_while) @razor.control
(razor_try) @razor.control
(razor_catch) @razor.control
(razor_finally) @razor.control

; Razor comments
(razor_comment) @comment
(html_comment) @comment

; Razor attributes
(razor_html_attribute) @razor.attribute
(razor_attribute_name) @razor.attribute.name
