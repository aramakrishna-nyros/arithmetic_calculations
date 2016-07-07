class Multiple
	
	def prime
		print "enter number: "
		i = STDIN.gets.to_i
		prime = true
		
		for counter in 2..(Math.sqrt(i))do
		  if i % counter == 0 then
		    prime = false
		  end
		end
		
		if prime then
			puts "#{i} is a prime"
		else
			puts "#{i} is not a prime"
		end  
	end

	def triangle(row)
	    i,j = 1
	    for i in (0...row).each     #represents rows
	        for j in (0..i).each    #represents cols
	            term = "*"
	            print "#{term}"
	            print " "
	        end   
	        print("\n")
	    end
	end 

	def armstrong
		puts "Enter a number"
		number = STDIN.gets.to_i
		sum = 0
		d=number
		while (d != 0)
			sum = sum + (d%10)*(d%10)*(d%10)
			d = d/10		
		end
		if (sum == number)
			puts "Your number is Armstrong"
		else
			puts "Not Armstrong"
		end	
	end
	
	def fact
		puts"\nFind Factorial enter 1 \nFind nCr value enter 2 \nFind nPr value enter 3"
		print"enter to go: "
		select = STDIN.gets.to_i
		if select == 1
			puts"Factorial"
			def factorial(n=0)
			  (1..n).inject(:*)
			end
			print "enter no: "
			 n = STDIN.gets.to_i
			 val = factorial(n)
			 puts "#{n} factorial is #{val}"
		end
		if select == 2
			puts"nCr value"
			print "enter n value: "
			n = STDIN.gets.to_i
			def factorial(n)
		 		(n...r).inject(:*)
			end
			print "enter r value: "
			r = STDIN.gets.to_i
			def factorial(r)
			  (1..r).inject(:*)
			end
			 val = factorial(n) / factorial(r)
			 puts "value of nCr: #{val}" 
		end
		if select == 3
			puts"nPr value"
			print "enter n value: "
			n = STDIN.gets.to_i
			print "enter r value: "
			r = STDIN.gets.to_i
			c = (r..n).inject(:*)
			puts c 
		end
	end
end	

obj = Multiple.new	
puts "welcome to Ruby"
print "1.Prime Number\t 2.Pascal Triangle\t 3.Armstrong Number\t 4.Factorial Number\n"
print "enter your choice: "
a = STDIN.gets.to_i
while a <= 9 do
	case a
		when 1
			obj.prime
			puts "if you wish to continue press 1 to 4 or exit press 0"
			a = STDIN.gets.to_i
			
		when 2
			puts "enter number of rows"
			row = STDIN.gets.to_i
			obj.triangle(row)
			puts "if you wish to continue press 1 to 4 or exit press 0"
			a = STDIN.gets.to_i
				 
		
		when 3
			obj.armstrong
			puts "if you wish to continue press 1 to 4 or exit press 0"
			a = STDIN.gets.to_i
			
		when 4
			obj.fact
			puts "if you wish to continue press 1 to 4 or exit press 0"
			a = STDIN.gets.to_i
		
		when 5..9
			puts "enter required input or press 0 for exit"
			a = STDIN.gets.to_i

		when 0
			puts "thanks for using"
		 	exit
					
	end
end