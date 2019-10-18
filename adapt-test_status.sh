Assignment Adapt test_status.sh script
#!/bin/bash
(systemctl status httpd | grep Active | awk '{print $2}'); varname2="inactive";
if [ $varname == $varname2 ]; then echo "The system is not turned on - would you like it runed on? (Yes or No)"
select yn in "Yes" "No"
case $yn in 
	Yes ) systemctl start httpd;;
	No ) exit;;
esac 
(systemctl status yum install | grep install | awk '{print $2}); varname2="not_installed";
if [ $varname == $varname2 ]; then echo "The system is no installed - would you to install? (Yes or No)"
select yn in "Yes" "No"
case $yn in 
	Yes ) systemctl yum install httpd;;
	No ) exit;;
esac 
