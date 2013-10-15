class PlusGotcha < Gotcha::Base

  DEFAULT_MIN = 0
  DEFAULT_MAX = 20

  def initialize
    rand1 = self.class.random_number_in_range
    rand2 = self.class.random_number_in_range
    @question = ["#{rand1} + #{rand2} = ", "#{rand1} plus #{rand2} equals ", "#{rand1.to_words} plus #{rand2.to_words} equals ", "#{rand1} plus #{rand2.to_words} equals ", "#{rand1.to_words} plus #{rand2} equals "][rand(5)]
    @answer = rand1 + rand2
  end

  private

  def self.max
    @@max ||= DEFAULT_MAX
  end

  def self.min
    @@min ||= DEFAULT_MIN
  end

  def self.random_number_in_range
    rand(self.max - self.min) + self.min
  end

end

Gotcha.register_type PlusGotcha
