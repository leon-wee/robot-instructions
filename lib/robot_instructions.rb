class RobotInstructions


  def self.call(start:, ended:)

    sx = start[0]
    sy = start[1]
    ex = ended[0]
    ey = ended[1]

    array = []
    array << [sx,sy]

    while (sx != ex) || (sy != ey) do
      sx = sx + (ex <=> sx)
      sy = sy + (ey <=> sy)
      array << [sx,sy]
    end

    array

  end


end
