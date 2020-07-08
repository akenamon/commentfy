#!/bin/bash 

	########################################################################## 
	#	Script Name: commenty.sh                                         #
	#	Script Author: Vinicius Torino                                   # 
	#	Author's email: vinicius.torino@protonmail.com                   #
	#	Date of Creation: Mon Jul  6 12:45:07 -03 2020                   #
	#	Short Description: Prints a simple script's header to stdout.    #
	#	Usage: ./commentfy.sh                                            #
	##########################################################################

_name()
{
	read  -p "Please, inform the scritp's name: "  script_name
	echo $script_name
}


_author()
{
	read -p "Please, inform the scritp's author: "  script_author
	echo $script_author
}


_author_email()
{
	read -p "Please, inform the author's e-mail: "  author_email
	echo $author_email
}

_date()
{
	date +'%D'
}


_descr()
{
	read -p "Please, inform the scritp's short description: "  script_descr
	echo $script_descr
}


_usage()
{
	read -p "Please, add the script's short usage: " script_usage
	echo $script_usage
}

_header()
{
	bar=_________________________________________________________________________________
	script_name=$(_name)
	script_author=$(_author)
	author_email=$(_author_email)
	script_date=$(_date)
	script_description=$(_descr)
	script_usage=$(_usage)
	
	exec 1> $script_name

	echo "#!/bin/bash

	$bar 
	$bar

		Script Name: $script_name
		Script Author: $script_author
		E-mail of the Author: $author_email
		Date of Creation: $script_date
		Short Description: $script_description
		Usage: $script_usage
	$bar
	$bar
	    "
	chmod +x ./$script_name	
}


_header
