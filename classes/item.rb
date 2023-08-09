class Item
  attr_reader :id
  attr_accessor :label

  def initialize(publish_date, archived: false)
    @id = Random.rand(1...1000)
    @publish_date = publish_date || Time.at(rand * Time.now.to_i).strftime('%Y/%m/%d')
    @archived = archived
    @label = nil
  end

  def can_be_archived?
    publish_date > 10
  end

  def move_to_archive!
    @archived = true if can_be_archived?
  end
end
