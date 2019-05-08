module UsersHelper
  def time_passed(hours)
    days = hours/24
    
    case 
      when days == 0
        return hours == 1 ? "1 hour" : "#{hours} hours"
      when days == 1
        return "#{days} day"
      when days > 1
        return "#{days} days"
      else
    end
    
  end
end
