Get-ADGroup -Filter {Name -eq "openshiftusers" -or Name -eq "openshiftuserstst"}  -Properties * | Get-ADGroupMember | Get-ADUser -Filter {ObjectCategory -eq "person"} -Properties EmailAddress, DisplayName |  select EmailAddress, DisplayName

