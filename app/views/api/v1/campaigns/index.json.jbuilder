json.array! @campaigns do |campaign|
  json.extract! campaign, :id, :title, :content, :user_id, :status

  t.string :title
      t.text :content
      t.references :user, foreign_key: true
      t.string :status
end
