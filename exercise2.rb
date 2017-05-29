# encoding: utf-8

class Arac

	attr_reader :arac_tipi, :bulundugu_il, :fiyat

	def initialize( arac_tipi, bulundugu_il, fiyat )
		@arac_tipi = arac_tipi, @bulundugu_il = bulundugu_il, @fiyat = fiyat
		@@miktar = 2000
	end

	def Arac.miktar
		@@miktar
	end

	def fiyat_esit(other)
		@fiyat == other.fiyat
	end

	def pahali(other)
		@fiyat > other.fiyat
	end

	def ucuz(other)
		@fiyat < other.fiyat
	end

	def indirim
		@fiyat - @miktar
	end

	def zam
		@fiyat + @miktar
	end
end

arac1 = Arac.new "Taksi", "Samsun", 20000
arac2 = Arac.new "Kamyon", "Kirsehir", 80000

puts "Iki aracin fiyatlari esit" + ( arac1.fiyat_esit(arac2) ? '' : ' degil' )
puts "Iki aracin fiyatlarindan #{arac1.bulundugu_il}'daki #{arac1.arac_tipi[0]} fiyati digerine gore daha pahali" + ( arac1.pahali(arac2) ? '' : ' degil' )
puts "Iki aracin fiyatlarindan #{arac1.bulundugu_il}'daki #{arac1.arac_tipi[0]} fiyati digerine gore daha ucuz" + ( arac1.ucuz(arac2) ? '' : ' degil' )
puts "#{arac1.bulundugu_il}'daki #{arac1.arac_tipi[0]}'nin indirimli fiyati #{arac1.fiyat - Arac.miktar}"
puts "#{arac1.bulundugu_il}'daki #{arac1.arac_tipi[0]}'nin zamli fiyati #{arac1.fiyat + Arac.miktar}"

#FIXME arac1.arac_tipi 3 elemanli dizi donduruyor, neden?