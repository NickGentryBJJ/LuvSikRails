json.shows.each do |show|
    json.set! show.id do 
        json.extract! show, :id, :venue, :created_at, :updated_at
    end
end