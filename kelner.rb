class Waiter
	def initialize()
		@x = ["tak","oczywiscie"]
		@duties = []
		self.welcome
	end
	
	def welcome
		puts "Witam, czy moge zaprezentowac menu?"
		@respond = gets#.gsub(/[^[:alpha:] ]/,'').split.map{|s| s.downcase}
		if ( @respond =~ /tak(.*)/ )
			self.present
		elsif (@respond =~ /nie(.*)/ )
			@duties.push(1)
			puts "to podejde za chwile"
		end
	end
	
	def present
		puts "oto nasze menu\n"
		@menu = IO.foreach("menu.txt"){|pos| puts pos}
		order
	end
	
	def order
		puts "Czy moge zebrac zamowienie?"
		@respond = gets#.gsub(/[^[:alpha:] ]/,'').split.map{|s| s.downcase}
		if( @respond =~ /tak(.*)/ )
			puts "yes"
			clean
		end

		if (@respond =~ /nie(.*)/ )
			@duties.push(2)
			puts "to podejde za chwile"
		end
	end

	def clean
		puts "Czyste"
	end
end

class Room
end

waiter = Waiter.new
