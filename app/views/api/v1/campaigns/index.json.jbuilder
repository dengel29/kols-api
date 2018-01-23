json.array! @campaigns do |campaign|
  json.extract! campaign, :id, :title, :content, :user_id, :status
end
