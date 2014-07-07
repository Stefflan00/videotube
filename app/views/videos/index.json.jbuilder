json.array!(@videos) do |video|
  json.extract! video, :id, :name, :upload
  json.url video_url(video, format: :json)
end
