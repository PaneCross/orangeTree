class OrangeTree
	def initialize name
		@name = name
		@height = 0
		@alive = true
		@age = 0
		@oranges = 0
		puts @name+' is planted.'
	end
	def height
		puts @name+' is '+@height.to_s+' ft. tall right now!'	
		puts	
	end
	def oneYearPasses
		passageOfTime
		produce
	end
	def countTheOranges
		puts @name+' has '+@oranges.to_s+' oranges ripe for picking at this time!'
		puts
	end
	def pickAnOrange
		puts 'You pick a delicious orange off of '+@name.to_s+'. Mmm Mmmm Good!!'
		puts
		@oranges = @oranges.to_i - 1
	end
	def what
		puts 'That\'s not part of taking care of a tree!'
		puts
	end

	private

	def produce
		if @age > 2
			@oranges = @age * 5
		else
			@oranges = 0
		end
	end
	def passageOfTime
		if @age == 10
			puts @name+' has lived a good life but it\'s time to say goodye now.' 
			puts 'One final orange drops to the ground as you walk away forever...'
			puts
			exit
		else
			puts 'Another year of tending to '+@name+' goes by...'
			puts
			@height = @height.to_i + 1
			@age = @age.to_i + 1
		end
	end
end
puts
puts 'Hello new tree owner! Please name your new orange tree!'
name = gets.chomp
tree = OrangeTree.new name.to_s
puts
while true
puts 'What would you like to do? (height,wait,count,pick)'
	choice = gets.chomp
		if choice == 'height'
			tree.height
		elsif choice == 'wait'
			tree.oneYearPasses
		elsif choice == 'count'
			tree.countTheOranges
		elsif choice == 'pick'
			tree.pickAnOrange
		elsif choice == 'quit'
			exit
		else
			tree.what
		end
end