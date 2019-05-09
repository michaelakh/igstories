module UsersHelper
  def time_passed(hours)
    days = hours/24
    
    case 
      when days == 0
        return hours == 1 ? "1 hour" : "#{hours} hours"
      when days == 1
        return "#{days} day"
      when days.between?(1,29)
        return "#{days} days"
      when days.between?(30,58)
        return "#{days/30} month"
      when days.between?(59,365)
        return "#{days/30} months"
      when days.between?(365,730)
        return "#{(days/365)} year"
      when days > 730
        return "#{(days/365)} years"
      else
    end
    
  end
end
