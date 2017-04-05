module Companies
  class Repository
    class << self
      COMPANIES = [
        {
          :id => 1,
          :company => 'WebiMes'
        },
        {
          :id => 2,
          :company => 'Arana'
        },
        {
          :id => 3,
          :company => 'Erina'
        },
        {
          :id => 4,
          :company => 'Wolf'
        },
        {
          :id => 5,
          :company => 'Bird'
        }
      ].freeze
      private_constant :COMPANIES
    end
  end
end
