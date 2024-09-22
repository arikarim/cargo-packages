module CustomDutyHsSections
  class DetailSerializer < Serializer::Base(CustomDutyHsSection)
    attributes :id, :name_en, :name_ckb, :name_ar, :code, :created_at, :updated_at
  end
end
