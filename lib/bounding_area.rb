class BoundingArea
  attr_reader :boxes

  def initialize(boxes = [])
    @boxes = boxes
    @top_box
    @middle_box
    @bottom_box
  end

  def  boxes_contain_point?(x, y)
    @boxes.each {|box| return true if box.contains_point?(x, y) }
    false

    # if @boxes.empty?
    #   return false
    # end
    #
    # @boxes.each do |box|
    #   if box.contains_point?(x, y)
    #     return true
    #   end
    # end
    # false
  end
end
