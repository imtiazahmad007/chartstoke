json.array!(@charts) do |chart|
  json.extract! chart, :id, :name, :content, :author_name, :published_at
  json.url chart_url(chart, format: :json)
end
