module Shard
  def self.use(shard)
    ApplicationRecord.connects_to database: { 
      writing: shard.to_sym,
      reading: "#{shard}_replica".to_sym
    }
  end
end