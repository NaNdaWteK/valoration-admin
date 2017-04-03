
module Page
  class Index
    include Capybara::DSL

    def initialize
      url = '/'
      visit(url)
      validate!
    end

    private

    def validate!
      page.assert_selector('#index')
    end
  end
end
