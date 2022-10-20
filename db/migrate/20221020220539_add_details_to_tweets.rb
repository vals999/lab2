class AddDetailsToTweets < ActiveRecord::Migration[7.0]
  def change
    add_column :tweets, :monster_id, :integer
    add_column :tweets, :content, :string
  end
end
