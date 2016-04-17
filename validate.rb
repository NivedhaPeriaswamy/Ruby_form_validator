begin

  def validate_fname(fname)
    begin
      regex = /^[a-zA-Z\s]+$/
      if (fname.match(regex)) then
        return 1
      else
        return 0
      end
    end
  end

  def validate_lname(lname)
    begin
      regex = /^[a-zA-Z\s]+$/
      if (lname.match(regex)) then
        return 1
      else
        return 0
      end
    end
  end

  def validate_age(age)
    begin
      age2 = age.to_i
      if(age2 >= 12 && age2 <=120 )then
        regex_age = /^[0-9]+$/
        if (age.match(regex_age))then
          return 1
        else
          return 0
        end
      else
        return 0
      end
    end
  end

  def validate_email(email)
    begin
      regex_email =/^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i
      if (email.match(regex_email)) then
        return 1
      else
        return 0
      end
    end
  end


  def validate_country(country)
    begin
      regex_country = /^[a-zA-Z\s]+$/
      if(country.match("india")) then
        if (country.match(regex_country)) then
          return 1
        else
          return 0
        end
      else
        return 0
      end
    end
  end

#print "enter applicant's state :"
#state = gets.to_s

  def validate_state(state,country_main)
    regex_state = /^[a-zA-Z\s]+$/
    state_ary = ["tamil nadu", "karnataka","kerala"]
    print state_ary.include?(state.chop)

    if(country_main.match("india")) then
      if(state_ary.include?(state.chop)) then
        if (state.match(regex_state)) then
          return 1
        else
          return 0
        end
      else
        return 0
      end
    else
      return 0
    end
  end

  def validate_city(city,state)
    begin
      # print "enter applicant's city :"
      #city = gets
      city_ary_tn = ["chennai","coimbatore","madurai","trichy","erode","salem","tirupur","hosur"]
      city_ary_ker = ["thiruvananthapuram","wayanad","allepey","cochin","ernakulam","calicut","palghat"]
      city_ary_kar = ["bangalore","mysore","mangalore","gokarna","coorg"]
      regex_city = /^[a-zA-Z\s]+$/
      if(state.match("tamil nadu")) then
        if(city_ary_tn.include?(city.chop)) then
          if (city.match(regex_city)) then
            return 1
          else
            return 0
          end
        else
          return 0
        end
      elsif(state.match("kerala")) then
        if(city_ary_ker.include?(city.chop)) then
          if (city.match(regex_city)) then
            return 1
          else
            return 0
          end
        else
          return 0
        end
      elsif(state.match("karnataka")) then
        if(city_ary_kar.include?(city.chop)) then
          if (city.match(regex_city)) then
            return 1
          else
            return 0
          end
        else
          return 0
        end
      else
        return 0
      end
    end
  end

  def validate_date(date)
    begin
      require 'date'
##print "enter date of birth :"
      date_string = date
      d, m, y = date_string.split '-'

      if(Date.valid_date? y.to_i, m.to_i, d.to_i)
        return 1
      else
        return 0
      end
    end
  end

  def validate_phone(phn)
    begin
#print "enter applicant's phone num :"
#phn = gets
      phn_num = phn.to_i
      regex_phn = /^[7-9]{1}[0-9]{9}\b/
      if (phn.match(regex_phn)) then
        return 1
      else
        return 0
      end
    end
  end


  def validate_pin(pin)
    begin
      regex_pin = /^[5-6]{1}[0-9]{2}\s{0,1}[0-9]{3}$/
      if(pin.match(regex_pin)) then
        return 1
      else
        return 0
      end
    end
  end
  end


