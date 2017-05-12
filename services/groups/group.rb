module Groups
  class Group < Domain::Group
    def serialize
      {
        'id' => @id,
        'group' => @group
      }
    end
    def self.from_bson(bson)
      return Groups::Group.new(bson['id'], bson['group'])
    end
  end
end
