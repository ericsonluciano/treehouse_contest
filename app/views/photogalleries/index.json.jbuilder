json.array!(@photogalleries) do |photogallery|
  json.extract! photogallery, :id, :title, :description, :posted_by, :date_posted
  json.url photogallery_url(photogallery, format: :json)
end
