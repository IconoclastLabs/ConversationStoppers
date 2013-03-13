class UILabel
	
	def reduce_to_frame(start_font_size)
    good_font_size = start_font_size
    constraintSize = CGSizeMake(self.frame.size.width, 10000)

    begin
      good_font_size -= 2
      new_font = UIFont.boldSystemFontOfSize(good_font_size)
      current_size = self.text.sizeWithFont(new_font, constrainedToSize:constraintSize, lineBreakMode:UILineBreakModeWordWrap)
    end while self.frame.size.height <= current_size.height

    #now set to font size we have settled on
    self.font = UIFont.boldSystemFontOfSize(good_font_size)
  end

end