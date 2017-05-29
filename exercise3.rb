
# encoding: utf-8

=begin

@gunluk degiskeni gibi nesne degiskenlerini attr ile veya initialize metodu içerisinde tanımlamak lazım.
Sınıfın içerisinde tanımlarsak mesela, hata mesajı alıyoruz. Sınıf içinde sınıf değişkeni tanımlanır, karıştırma.

=end

class Robot

	attr_reader :gunluk, :konum_yon, :konum_mesafe
	attr_accessor :variable

	def initialize ( isim, sahip, adim_boyu )
		@isim, @sahip, @adim_boyu = isim, sahip, adim_boyu
		@gunluk = [ "Baslangic Noktasi" ]
	end

	def don( yon )
		puts "\n#{yon} tarafa donuldu"
		@yon = yon
	end

	def ilerle( adim_sayisi )
		puts " \n#{adim_sayisi} adim ilerlendi "
		@adim_sayisi = adim_sayisi	
		@gunluk << "#{@yon} yone #{@adim_sayisi} adim"
		
		
	end

	def konum_bildir
		
		if @konum_mesafe == nil
			@konum_mesafe = @adim_boyu * @adim_sayisi
		end
		
		if @konum_yon == nil
			@konum_yon = @yon
		elsif @konum_yon == @yon
			@konum_mesafe += @adim_boyu * @adim_sayisi
		elsif @konum_yon != @yon
			if @konum_mesafe <= @adim_boyu * @adim_sayisi
				@konum_mesafe = @adim_boyu * @adim_sayisi - @konum_mesafe
				@konum_yon = @yon
			elsif @konum_mesafe > @adim_boyu * @adim_sayisi
				@konum_mesafe -= @adim_sayisi * @adim_boyu				
			end			
		end

		if @konum_mesafe == 0
			puts "\nBaslangic Noktasindasiniz"
		else
			puts "\nBaslangic noktasindan #{@konum_yon}a dogru #{@konum_mesafe} cm uzaktayim"
		end

	end

end



bot = Robot.new( "Robocop", "uSalman", 10 )
bot.don :sol
bot.ilerle 10
bot.konum_bildir

puts "\n-----------\nHareket Gecmisi\n----------"
bot.gunluk.each do |e|
	puts "- #{e}"
end

bot.don :sag
bot.ilerle 10
bot.konum_bildir

puts "\n-----------\nHareket Gecmisi\n----------"
bot.gunluk.each do |e|
	puts "- #{e}"
end

bot.don :sol
bot.ilerle 300
bot.konum_bildir

puts "\n-----------\nHareket Gecmisi\n----------"
bot.gunluk.each do |e|
	puts "- #{e}"
end
