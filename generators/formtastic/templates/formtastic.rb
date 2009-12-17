# encoding: utf-8

if defined?(Formtastic)
  Formtastic::SemanticFormHelper.setup do |config|
    # You can add custom inputs or override parts of Formtastic by subclassing SemanticFormBuilder and
    # specifying that class here.  Defaults to SemanticFormBuilder.
    # config.builder = MyCustomBuilder
  end

  Formtastic::SemanticFormBuilder.setup do |config|
    # Set the default text field size when input is a string. Default is 50.
    config.default_text_field_size = 50

    # Should all fields be considered "required" by default?
    # Defaults to true, see ValidationReflection notes below.
    config.all_fields_required_by_default = true

    # Should select fields have a blank option/prompt by default?
    # Defaults to true.
    config.include_blank_for_select_by_default = true

    # Set the string that will be appended to the labels/fieldsets which are required
    # It accepts string or procs and the default is a localized version of
    # '<abbr title="required">*</abbr>'. In other words, if you configure formtastic.required
    # in your locale, it will replace the abbr title properly. But if you don't want to use
    # abbr tag, you can simply give a string as below
    config.required_string = %{<abbr title="Required">*</abbr>}

    # Set the string that will be appended to the labels/fieldsets which are optional
    # Defaults to an empty string ("") and also accepts procs (see required_string above)
    config.optional_string = ""

    # Set the way inline errors will be displayed.
    # Defaults to :sentence, valid options are :sentence, :list and :none
    config.inline_errors = :sentence

    # Set the method to call on label text to transform or format it for human-friendly
    # reading when formtastic is user without object. Defaults to :humanize.
    config.label_str_method = :humanize

    # Set the array of methods to try calling on parent objects in :select and :radio inputs
    # for the text inside each @<option>@ tag or alongside each radio @<input>@. The first method
    # that is found on the object will be used.
    # Defaults to ["to_label", "display_name", "full_name", "name", "title", "username", "login", "value", "to_s"]
    config.collection_label_methods = ["to_label", "display_name", "full_name", "name",
                                        "title", "username", "login", "value", "to_s"]

    # Formtastic by default renders inside li tags the input, hints and then
    # errors messages. Sometimes you want the hints to be rendered first than
    # the input, in the following order: hints, input and errors. You can
    # customize it doing just as below:
    config.inline_order = [:input, :hints, :errors]

    # Specifies if labels/hints for input fields automatically be looked up using I18n.
    # Default value: false. Overridden for specific fields by setting value to true,
    # i.e. :label => true, or :hint => true (or opposite depending on initialized value)
    config.i18n_lookups_by_default = false
  end
end