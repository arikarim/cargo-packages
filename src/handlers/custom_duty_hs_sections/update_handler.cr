module CustomDutyHsSections
  class UpdateHandler < Marten::Handler
    @schema : CustomDutyHsSectionCreateSchema?

    def put
      section = CustomDutyHsSection.get(id: params["id"])

      if section.nil?
        json({error: "Not found"}, status: 404)
      else
        if schema.valid?
          section.update(schema.validated_data)
          json(CustomDutyHsSections::DetailSerializer.new(section || CustomDutyHsSection.new).serialize)
        else
          json({errors: serialize_errors(schema)})
        end
      end
    end

    private def schema
      @schema ||= CustomDutyHsSectionCreateSchema.new(request.data)
    end
  end
end
