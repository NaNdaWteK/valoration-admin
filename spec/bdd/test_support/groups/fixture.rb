require_relative 'group'

module Groups
  class Fixture

    extend Capybara::DSL

    GROUP_NAME = 'Dishes'
    OTHER_GROUP = 'Desserts'

    def self.empty
      visit('/groups/empty')
      Page::Group.new
    end

    def self.add_group
      group = self.empty
      group.fill(GROUP_NAME)
      group.submit
      group
    end

    def self.add_groups
      group = self.add_group
      group.fill(OTHER_GROUP)
      group.submit
      group
    end

  end
end
