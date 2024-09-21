class CustomDutyHsSection < Marten::Model
  # The name of the table in the database.
  field :id, :string, primary_key: true, max_size: 255
  field :name_en, :string, max_size: 255
  field :name_ckb, :string, max_size: 255
  field :name_ar, :string, max_size: 255

  field :code, :string, max_size: 10
end