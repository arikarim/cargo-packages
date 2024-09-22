module CustomDutyHsSections
  class ListHandler < Marten::Handler
    def get
      sections = CustomDutyHsSection.all.to_a
      if sections.nil?
        json({ data: nil })
      else
        json(CustomDutyHsSections::ListSerializer.new(sections).serialize)
      end
    end
  end
end
