class CreateElectionCandidates < ActiveRecord::Migration
  def change
    create_table :election_candidates do |t|
      t.integer :candidate_id
      t.integer :election_id

      t.timestamps null: false
    end
  end
end
