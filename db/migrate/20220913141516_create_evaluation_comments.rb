class CreateEvaluationComments < ActiveRecord::Migration[6.0]
  def change
    create_table :evaluation_comments do |t|
      
      t.timestamps
    end
  end
end
