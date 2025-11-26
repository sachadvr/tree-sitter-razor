; Injections pour JavaScript, CSS et C#

; Injection JavaScript dans les attributs onclick, onchange, etc.
(html_attribute
  (html_attribute_name) @_attr_name
  (#match? @_attr_name "^(onclick|onchange|onload|onerror|onsubmit|onfocus|onblur|onkeydown|onkeyup|onkeypress|onmousedown|onmouseup|onmouseover|onmouseout|onmouseenter|onmouseleave|ondblclick|oncontextmenu|onscroll|onresize|oninput|oninvalid|onselect|onreset)$")
  (html_attribute_value) @injection.content
  (#set! injection.language "javascript"))

; Injection CSS dans les balises <style>
(element
  (tag_name) @_tag_name
  (#eq? @_tag_name "style")
  (#set! injection.language "css")
  (#set! injection.include-children))

; Injection JavaScript dans les balises <script>
(element
  (tag_name) @_tag_name
  (#eq? @_tag_name "script")
  (#set! injection.language "javascript")
  (#set! injection.include-children))

; Injection C# dans les expressions Razor explicites
(razor_explicit_expression
  (parenthesized_expression) @injection.content
  (#set! injection.language "c-sharp"))

; Injection C# dans les expressions Razor implicites
(razor_implicit_expression
  (expression) @injection.content
  (#set! injection.language "c-sharp"))

; Injection C# dans les blocs Razor
(razor_block
  (#set! injection.language "c-sharp")
  (#set! injection.include-children))

; Injection C# dans les valeurs d'attributs Razor
(razor_attribute_value
  (expression) @injection.content
  (#set! injection.language "c-sharp"))
