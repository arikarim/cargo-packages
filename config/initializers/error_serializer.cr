def serialize_errors(schema)
  errors = [] of Hash(String | Nil, String)

  i = 0
  b = 0
  puts schema.errors.size

  while i < schema.errors.size
    field = schema.errors[i].field
    puts schema.errors[field][b].message
    while b < schema.errors[field].size
      errors << {field => schema.errors[field][b].message }
      b += 1
    end
    b = 0
    i += 1
  end

  errors
end