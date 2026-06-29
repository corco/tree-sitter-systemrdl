; Comments and literals
(comment) @comment
(string_literal) @string
(number) @number
(boolean_literal) @boolean

; Keywords
[
  "abstract"
  "alias"
  "bothedge"
  "component"
  "constraint"
  "default"
  "encode"
  "enum"
  "external"
  "inside"
  "internal"
  "level"
  "negedge"
  "nonsticky"
  "posedge"
  "property"
  "ref"
  "signal"
  "struct"
  "this"
] @keyword

; Builtin literal families
[
  (accesstype_literal)
  (addressingtype_literal)
  (onreadtype_literal)
  (onwritetype_literal)
  (precedencetype_literal)
] @constant.builtin

; Builtin types
[
  (component_primary_type)
  (integer_atom_type)
  (integer_vector_type)
  (signing)
  (simple_type)
] @type.builtin

; Definitions
[
  (component_named_def
    id: (id))
  (explicit_component_inst
    id: (id))
  (enum_def
    (id))
  (struct_def
    (id))
] @type

(property_definition
  (id) @property)

(constraint_def_exp
  (id) @function)

(enum_entry
  (id) @constant)

(struct_elem
  (id) @property)

[
  (param_def_elem
    (id))
  (param_elem
    (id))
] @parameter

; Type references
[
  (basic_data_type
    (id))
  (casting_type
    (constant_primary
      (instance_or_prop_ref
        (instance_ref
          (instance_ref_element
            (id))))))
] @type

; References and member-like names
(prop_keyword) @property
(prop_mod) @property

[
  (component_inst
    id: (id))
  (component_inst_alias
    (id))
  (instance_ref_element
    (id))
] @variable

[
  (prop_assignment_lhs
    (id))
  (constraint_prop_assignment
    (id))
  (struct_literal_elem
    (id))
] @property

(prop_ref
  (id) @property)

[
  (explicit_encode_assignment
    (id))
  (post_encode_assignment
    (id))
] @constant

; Enum scope and members
(enumerator_literal
  (id) @type
  "::"
  (id) @constant)

; Macro-like and parameter-style names
((id) @constant
  (#match? @constant "^[A-Z][A-Z0-9_]*$"))

; Operators and punctuation
[
  "'"
  "'{"
  "!"
  "!="
  "%"
  "%="
  "&"
  "&&"
  "*"
  "**"
  "+"
  "+="
  "-"
  "->"
  "/"
  ":"
  "::"
  "<"
  "<<"
  "<="
  "="
  "=="
  ">"
  ">="
  ">>"
  "?"
  "@"
  "^"
  "^~"
  "|"
  "||"
  "~"
] @operator

[
  ","
  "."
  ";"
] @punctuation.delimiter

[
  "#"
  "(" ")"
  "[" "]"
  "{" "}"
] @punctuation.bracket

(ERROR) @error
