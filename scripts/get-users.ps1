Get-ADGroup -Filter {Name -eq "openshiftusers" -or Name -eq "openshiftuserstst"}  -Properties * | Get-ADGroupMember | Get-ADUser -Filter * -Properties EmailAddress,DisplayName| select EmailAddress, DisplayName | export-csv -Encoding utf8 brugereutf8

