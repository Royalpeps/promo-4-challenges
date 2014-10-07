# This "require" line loads the contents of the 'date' file from the standard
# Ruby library, giving you access to the Date class.
require 'date'


def age_in_days(day, month, year)
  end_date = Date.today
  begin_date = Date.new(year, month, day)
  nbdays = end_date - begin_date
  nbdays.to_i
  # puts age.to_i/365
  # TODO: return the age expressed in days given the day, month, and year of birth
end

