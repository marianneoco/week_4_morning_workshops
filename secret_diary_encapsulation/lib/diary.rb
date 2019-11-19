require_relative 'secret_diary'

class Diary

  attr_reader :entries, :secret

  def initialize(secret = SecretDiary.new)
    @entries = []
    @secret = secret
  end

  def add_entry(entry)
    raise "Diary is locked!!!" if @secret.locked == true
    @entries << entry
  end

  def get_entries
    raise "Diary is locked..." if @secret.locked == true
    @entries
  end

end
