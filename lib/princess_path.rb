class PrincessPath

  def displayPathtoPrincess(n,grid)
    return ""
  end

  n = gets.to_i
  
  (0...n).each do |i|
    grid[i] = gets.strip
  end

  displayPathtoPrincess(n,grid)
end
