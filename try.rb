#load 'validate.rb'
require 'C:\Windows.old\Users\Rajamani\RubymineProjects\RubyPackage\validate.rb'
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
