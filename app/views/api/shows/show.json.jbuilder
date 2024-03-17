json.show do
    json.extract! @show, :id, :venue, :location, :date, :created_at, :updated_at
end