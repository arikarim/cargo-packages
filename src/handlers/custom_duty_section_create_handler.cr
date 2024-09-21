class CustomDutySectionCreateHandler < Marten::Handler
  @schema : CustomDutyHsSectionCreateSchema?

  def post
    if schema.valid?
      section = CustomDutyHsSection.new(schema.validated_data)
      section.id = UUID.random.to_s
      section.save!
      json(CustomDutyHsSections::DetailSerializer.new(section || CustomDutyHsSection.new).serialize)
    else
      json({errors: serialize_errors(schema)})
    end
  end

  private def schema
    @schema ||= CustomDutyHsSectionCreateSchema.new(request.data)
  end

end
