class CustomDutyHsSectionCreateSchema < Marten::Schema
  field :name_en, :string, max_size: 255, required: true
  field :name_ckb, :string, max_size: 255, required: true
  field :name_ar, :string, max_size: 255, required: true
  field :code, :string, max_size: 10, required: true
end