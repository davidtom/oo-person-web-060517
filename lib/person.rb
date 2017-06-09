# your code goes here
class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene
  attr_writer

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(level)
    if level > 10
      @happiness = 10
    elsif level < 0
      @happiness = 0
    else
      @happiness = level
    end
  end

  def hygiene=(level)
    if level > 10
      @hygiene = 10
    elsif level < 0
      @hygiene = 0
    else
      @hygiene = level
    end
  end

  def happy?
    self.happiness > 7 ? true : false
  end

  def clean?
    self.hygiene > 7 ? true : false
  end

  def get_paid(salary)
    self.bank_account += 100
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    case topic
    when "politics"
      self.happiness -= 2
      person.happiness -= 2
      "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness += 1
      person.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end

  end

end
