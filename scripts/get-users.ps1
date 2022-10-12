Get-ADGroup -Filter {Name -eq "openshiftusers" -or Name -eq "openshiftuserstst"}  -Properties * | Get-ADGroupMember | Get-ADUser -Properties mail,displayname | select mail,displayname | export-csv -Encoding utf8 brugere


