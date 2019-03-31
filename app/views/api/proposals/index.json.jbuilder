json.array!(@proposals) do |proposal|
  json.extract! proposal, :id, :name, :description, :value, :date_begin, :date_end, :city
end
