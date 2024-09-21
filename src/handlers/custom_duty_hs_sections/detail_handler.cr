module CustomDutyHsSections
  class DetailHandler < Marten::Handler
    def get
      section = CustomDutyHsSection.get(id: params["id"])

      if section.nil?
        json({error: "Not found"}, status: 404)
      else
        json(CustomDutyHsSections::DetailSerializer.new(section || CustomDutyHsSection.new).serialize)
      end
    end
  end
end
