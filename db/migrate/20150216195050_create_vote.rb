class CreateVote < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :event_id
      t.string :category
      t.integer :score
    end
  end
end
