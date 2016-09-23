module ErrorsHelper
    def show_errors(object, field_name)
        if object && object.errors && object.errors.any?
            unless object.errors.messages[field_name].blank?
                error_block = '<small class="help-block">' << object.errors.messages[field_name].join(', ') << '</small>'
                error_block.html_safe
            end
        end
    end

    def has_errors(object, field_name)
        if object && object.errors && object.errors.any?
            unless object.errors.messages[field_name].blank?
                "has-error"
            end
        end
    end
end
