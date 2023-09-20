class CreatePingResponses < ActiveRecord::Migration[6.1]
  def change
    create_table :ping_responses do |t|
      t.string :text

      t.timestamps
    end
  end
end
