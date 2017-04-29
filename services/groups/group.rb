module Groups
  class Group < Domain::Group
    def serialize
      {
        'id' => @id,
        'group' => @group
      }
    end
  end
end
