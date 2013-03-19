# convert.rb
class Convert

	def output(smile)
	  number_of_carbons = 0
      carbon_arr = smile.split(//)
      #puts carbon_arr
	      carbon_arr.each do |element|
	      	if element == "C"
	           number_of_carbons = number_of_carbons + 1
	       end
      end

        #puts number_of_carbons
		return get_iupac(number_of_carbons)
	end




   def get_iupac(num_of_carbon_atoms)
   large_prefix = ""

   	if num_of_carbon_atoms < 21
	   prefix = case num_of_carbon_atoms
	   	when 1 then "meth"
	   	when 2 then "eth"
	   	when 3 then "prop"
	   	when 4 then "but"
	   	when 5 then "pent"
	   	when 6 then "hex"
	   	when 7 then "hept"
	   	when 8 then "oct"
	   	when 9 then "non"
	   	when 10 then "dec"
	    when 11 then "undec"
	    when 12 then "dodec"
	    when 13 then "tridec"
	    when 14 then "tetradec"
	    when 15 then "pentadec"
	    when 16 then "hexadec"
	    when 17 then "heptadec"
	    when 18 then "octadec"
	    when 19 then "nonadec"
	    when 20 then "icos"
	   end
	elsif num_of_carbon_atoms > 20
		   	digits_arr = num_of_carbon_atoms.to_s.split(//)
		   	prefix = case digits_arr[1]
		   		when "0" then ""
			   	when "1" then "hen"
			   	when "2" then "do"
			   	when "3" then "tri"
			   	when "4" then "tetra"
			   	when "5" then "penta"
			   	when "6" then "hexa"
			   	when "7" then "hepta"
			   	when "8" then "octa"
			   	when "9" then "nona"
            end
		if num_of_carbon_atoms < 30
			large_prefix = "cos"
		elsif num_of_carbon_atoms < 40
			large_prefix = "triacont"
		elsif num_of_carbon_atoms < 50
			large_prefix = "tetracont"
		elsif num_of_carbon_atoms < 60
			large_prefix = "pentacont"
		elsif num_of_carbon_atoms < 70
			large_prefix = "hexacont"
		elsif num_of_carbon_atoms < 80
			large_prefix = "heptacont"
		elsif num_of_carbon_atoms < 90
			large_prefix = "octacont"
		elsif num_of_carbon_atoms < 100
			large_prefix = "nonacont"
		elsif num_of_carbon_atoms >= 100
			large_prefix = "hect"
		end
    end

    final_name = prefix + large_prefix + "ane"
    puts final_name
   	return final_name

   end

end