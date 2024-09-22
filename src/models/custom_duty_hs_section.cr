class CustomDutyHsSection < Marten::Model
  with_timestamp_fields
  # The name of the table in the database.
  field :id, :string, primary_key: true, max_size: 255
  field :name_en, :string, max_size: 255, unique: true
  field :name_ckb, :string, max_size: 255
  field :name_ar, :string, max_size: 255

  field :code, :string, max_size: 10

  db_index :name_en_unique_index, field_names: [:name_en]

  validate :name_en_should_be_unique

  private def name_en_should_be_unique
    errors.add(:name_en, "should be unique")
    # if CustomDutyHsSection.filter(name_en: name_en).count > 0
    # end
  end
end