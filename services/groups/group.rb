module Groups
  class Group
    attr_reader :id, :group

    def initialize(id, group)
      @id = id
      @group = group
    end

    def to_h
      {id: @id, group: @group}
    end
  end
end
