class CustomDutySectionListHandler < Marten::Handler
  def get
    section = CustomDutyHsSection.last
    # name = section.name_en
    json({ name_en: "name" })
  end
end