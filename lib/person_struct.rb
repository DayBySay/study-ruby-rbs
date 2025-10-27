# rbs_inline: enabled

# @rbs!
#   type person_struct_hash = { name: String, age: Integer, email: String? }

# Struct を使った個人情報管理クラス
PersonStruct = Struct.new(:name, :age, :email) do
  # @rbs @name: String
  # @rbs @age: Integer
  # @rbs @email: String?

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

  # @rbs () -> person_struct_hash
  def to_hash
    { name: name, age: age, email: email }
  end

  # @rbs (PersonStruct other) -> bool
  def same_age?(other)
    age == other.age
  end
end