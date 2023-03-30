json.extract! location, :id, :name, :address, :latitude, :longitude, :created_at, :updated_at
json.label location.name
json.tooltip html_link_to(location)
