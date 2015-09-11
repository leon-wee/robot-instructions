require './lib/robot_instructions'

describe RobotInstructions do

  it 'calculates an incremental route' do
    expect(RobotInstructions.call(start: [3,5], ended: [10,10])).to eq(
       [[3,5],[4,6],[5,7],[6,8],[7,9],[8,10],[9,10],[10,10]]
    )
  end

  it 'calculates a decremental route' do
    expect(RobotInstructions.call(start: [7, 8], ended: [3, 2])).to eq(
      [[7, 8], [6, 7], [5, 6], [4, 5], [3, 4], [3, 3], [3, 2]]
    )
  end

  it 'calculates a route from negative coordinates' do
    expect(RobotInstructions.call(start: [-2,-3], ended: [1,1])).to eq(
      [[-2,-3],[-1,-2],[0,-1],[1,0],[1,1]]
    )
  end

end
