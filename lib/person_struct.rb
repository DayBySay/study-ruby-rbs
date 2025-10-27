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
    "こんにちは、#{name}です。"
  end
end