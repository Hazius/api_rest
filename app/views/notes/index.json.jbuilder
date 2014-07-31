json.notes do
  json.array!(@notes) do |note|
    json.extract! note, :id, :title, :created_at
  end
end