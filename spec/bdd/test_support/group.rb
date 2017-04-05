
module Page
  class Group
    include Capybara::DSL

    def initialize
      url = '/'
      visit(url)
      validate!
    end

    private

    def validate!
      page.assert_selector('#group')
      page.assert_selector('#submit')
    end
  end
end
