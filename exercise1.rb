class Nokta

	attr_accessor :x, :y

	def kare_mi(other)
		(self.x - other.x).abs == (self.y - other.y).abs
	end

end

nokta1 = Nokta.new
nokta2 = Nokta.new
print "Ilk noktanin x koordinatini giriniz: "
nokta1.x = gets.chop.to_i
print "Ilk noktanin y koordinatini giriniz: "
nokta1.y = gets.chop.to_i
print "Ikinci noktanin x koordinatini giriniz: "
nokta2.x = gets.chop.to_i
print "Ikinci noktanin y koordinatini giriniz: "
nokta2.y = gets.chop.to_i

puts "(#{nokta1.x},#{nokta1.y}) ile (#{nokta2.x},#{nokta2.y}) noktalari kare " + (nokta1.kare_mi(nokta2) ? 'belirtir' : 'belirtmez')