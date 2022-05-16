class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  # connects_to shards: {
  #   default: { 
  #     writing: :primary, 
  #     reading: :primary_replica 
  #   },
  #   shard_one: { 
  #     writing: :primary_shard_one, 
  #     reading: :primary_shard_one_replica 
  #   }
  # }
  # ActiveRecord::Base.connected_to(role: :writing, shard: :default) do
  #   # Create a record in shard default
  # end
end
