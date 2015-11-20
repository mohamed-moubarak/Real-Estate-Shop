json.array!(@properties) do |property|
  json.extract! property, :id, :description, :street, :area, :city, :building_no, :apartement_no, :famous_site, :surface_area, :price_from, :price_to
  json.url property_url(property, format: :json)
end
