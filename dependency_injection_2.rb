class Diary

  attr_reader :entry

  def initialize
    @entries = []
  end

  def add(title, body, entry = Entry)
    @entries << entry.new(title, body)
  end

  def index
    titles = @entries.map {|entry| entry.title}
    titles.join("\n")
  end
end

class Entry
  attr_reader :title, :body

  def initialize(title, body)
    @title = title
    @body = body
  end
end
