module VolschedulersHelper

def pop_with_last_7_days vol_array
  today = Time.now
  (0..6).each do |d|
    t = today - (1 + 6-d)*(60*60*24)
    str = "workdate = \'"+ t.strftime('%F')+"\'"
    wh = WorkHistory.where( str )
    n = 0   
    if !wh.empty?
      if wh == []
       # testing precondition
       raise d.inspect 
      end
      wh.each do |day|
        vol_array[d][n] = day.volunteer
        n = n+1
      end
    end
  end
  return vol_array
end

  



end
