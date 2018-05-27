module LifeHelper
  def box_size
    row = @cols
    row = (((@rows + @cols) / 2).to_i + 5) if @cols < @rows

    box_size = case row
               when 0..9 then 40
               when 10..19 then 35
               when 20..29 then 30
               when 30..39 then 25
               when 40..49 then 20
               when 50..64 then 15
               when 65..100 then 10
               else
                 0
               end
    box_size
  end

  def calculate_max_width
    #Rails.logger.debug(" ROWS ::: #{@rows}  COLS ::: #{@cols}  BOXSIZE ::: #{@box_size}")
    (@rows < @cols) ? ((@cols * (@box_size + 3)) + 10) : ((@rows * (@box_size + 3)) + 10)
  end

end
