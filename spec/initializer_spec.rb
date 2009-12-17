# coding: utf-8
require File.join(File.dirname(__FILE__), *%w[spec_helper])

describe 'Formtastic' do
  
  describe 'Initializer' do
    
    it "should be possible to set Formtastic config in the traditional way" do
      lambda {
          ::Formtastic::SemanticFormHelper.builder
          ::Formtastic::SemanticFormHelper.builder = ::Formtastic::SemanticFormHelper.builder
          ::Formtastic::SemanticFormBuilder.default_text_field_size
          ::Formtastic::SemanticFormBuilder.default_text_field_size = ::Formtastic::SemanticFormBuilder.default_text_field_size
        }.should_not raise_error(::NoMethodError)
    end
    
    it "should be possible to set Formtastic config in the new way" do
      lambda {
          ::Formtastic::SemanticFormHelper.setup do |config|
            config.builder
            config.builder = ::Formtastic::SemanticFormHelper.builder
          end
          ::Formtastic::SemanticFormBuilder.setup do |config|
            config.default_text_field_size
            config.default_text_field_size = ::Formtastic::SemanticFormBuilder.default_text_field_size
          end
        }.should_not raise_error(::NoMethodError)
    end
    
  end
  
end