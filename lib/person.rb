# rbs_inline: enabled

# @rbs!
#   type person_hash = { name: String, age: Integer, email: String? }

# 個人情報を管理するクラス
class Person
  # @rbs @name: String
  # @rbs @age: Integer
  # @rbs @email: String?

  attr_reader :name, :age, :email

  # @rbs (String name, Integer age, String? email) -> void
  def initialize(name, age, email = nil)
    @name = name
    @age = age
    @email = email
  end

  # @rbs () -> String
  def greeting
    "こんにちは、#{name}です。#{age}歳です。"
  end

  # @rbs () -> bool
  def adult?
    age >= 20
  end

  # @rbs () -> String?
  def email_domain
    return nil unless email
    email.split("@").last
  end

  # @rbs (Integer years) -> Integer
  def age_after(years)
    age + years
  end

  # @rbs () -> person_hash
  def to_hash
    { name: name, age: age, email: email }
  end

  # @rbs (Person other) -> bool
  def same_age?(other)
    age == other.age
  end
end