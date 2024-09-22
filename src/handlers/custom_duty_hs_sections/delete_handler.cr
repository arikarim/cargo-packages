module CustomDutyHsSections
  class DeleteHandler < Marten::Handler
    def delete
      section = CustomDutyHsSection.get(id: params["id"])

      if section.nil?
        json({error: "Not found"}, status: 404)
      else
        section.delete
        json({message: "Deleted"})
      end
    end
  end
end