def file_input(val)
begin
    return nil if val < 0
    line = File.readlines("E:\opensource\\form.txt")[val]
    line ? line.chomp : nil
    value = line
      puts value
      return value
    end
  end

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

begin
  count = File.foreach("E:\opensource\\form.txt").inject(0) {|c, line| c+1}
  i=0
  j = 0
  puts count
end

  while i < (count/10)  do
    begin
  print "enter applicant's first name :"
  fname =  file_input(j).to_s
  puts fname
  j += 1
  if(validate_fname(fname)==1)
      print "valid first name\n"
    else
      print "invalid first name\n"
   end

    print "enter applicant's last name :"
    lname = fname =  file_input(j).to_s
  j += 1
  if(validate_lname(lname)==1)
      print "valid last name\n"
    else
      print "invalid last name\n"
    end

    print "enter applicant's age :"
    age = file_input(j).to_s
  j += 1
  if(validate_age(age)==1)
      print "valid age\n"
    else
      print "invalid age\n"
    end

    print "enter applicant's email id :"
    email = file_input(j).to_s
  j += 1
  if(validate_email(email)==1)
      print "valid email\n"
    else
      print "invalid email\n"
    end

    print "enter applicant's country :"
    country = file_input(j).to_s
  j += 1
  country_main = country
    if(validate_country(country)==1)
      print "valid country\n"
    else
      print "invalid country\n"
    end


    print "enter applicant's state :"
    state = file_input(j).to_s
  j += 1
  if(validate_state(state,country_main)==1)
      print "valid state\n"
    else
      print "invalid state\n"
    end


    print "enter applicant's city :"
    city = file_input(j).to_s
  j += 1
  if(validate_city(city,state)==1)
      print "valid city\n"
    else
      print "invalid city\n"
    end


    print "enter applicant's birth date :"
    date = file_input(j).to_s
  j += 1
  if(validate_date(date)==1)
      print "valid date\n"
    else
      print "invalid date\n"
    end


    print "enter applicant's phone number :"
    phn = file_input(j).to_s
  j += 1
  if(validate_phone(phn)==1)
      print "valid phone number\n"
    else
      print "invalid phone number\n"
    end

print "enter applicant's pincode :"
pin = file_input(j).to_s
  j += 1
  if(validate_pin(pin)==1)
  print "valid pin\n"
else
  print "invalid pin\n"
end
  end
  i +=1
  end
  end