module Groups
  class Group < Domain::Group
    def serialize
      {
        'id' => @id,
        'group' => @group
      }
    end
    def self.from_bson(bson)
      groups = Array.new
      bson.each { |group| groups.push(Groups::Group.new(group['id'], group['group'])) }
      return groups
    end
  end
end
