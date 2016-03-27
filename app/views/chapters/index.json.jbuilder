json.array!(@chapters) do |chapter|
  json.extract! chapter, :id, :title, :content, :author_id, :book_id
  json.url chapter_url(chapter, format: :json)
end
