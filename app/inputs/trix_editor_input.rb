class TrixEditorInput < SimpleForm::Inputs::StringInput
  def input
    id = "trix-#{attribute_name}"
    [
      @builder.hidden_field(attribute_name, input_html_options.merge(id: id)),
      tag("trix-editor", input_html_options.merge(input: id))
    ].join("").html_safe
  end
end
