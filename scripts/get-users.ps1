Get-ADGroup -Filter {Name -eq "openshiftusers" -or Name -eq "openshiftuserstst"}  -Properties * | Get-ADGroupMember | Get-ADUser -Properties mail,displayname | select mail,displayname | export-csv -Encoding utf8 brugere

 Get-ADUser -Filter 'name -eq "W87236"' -Properties Department


  1 history
   2 cd .\projects\openshift-brugere\
   3 dir
   4 Get-ADGroup -Filter {Name -eq "openshiftusers" -or Name -eq "openshiftuserstst"}  -Properties * | Get-ADGroupMember | Get-ADUser -Filter * -Properties mail,displayname
   5 Get-ADGroup -Filter {Name -eq "openshiftusers" -or Name -eq "openshiftuserstst"}  -Properties * | Get-ADGroupMember | Get-ADUser -Filter * -Properties mail,displayname | select mail,displayname
   6 Get-ADGroup -Filter {Name -eq "openshiftusers" -or Name -eq "openshiftuserstst"}  -Properties * | Get-ADGroupMember | select mail,displayname
   7 Get-ADGroup -Filter {Name -eq "openshiftusers" -or Name -eq "openshiftuserstst"}  -Properties * | Get-ADGroupMember
   8 Get-ADGroup -Filter {Name -eq "openshiftusers" -or Name -eq "openshiftuserstst"}  -Properties * | Get-ADGroupMember | select name
   9 Get-ADGroup -Filter {Name -eq "openshiftusers" -or Name -eq "openshiftuserstst"}  -Properties * | Get-ADGroupMember
  10 Get-ADGroup -Filter {Name -eq "openshiftusers" -or Name -eq "openshiftuserstst"}  -Properties * | Get-ADGroupMember | select SamAccountName
  11 Get-ADGroup -Filter {Name -eq "openshiftusers" -or Name -eq "openshiftuserstst"}  -Properties * | Get-ADGroupMember | Get-ADUser -Properties mail,displayname | select mail,displayname
  12 Get-ADGroup -Filter {Name -eq "openshiftusers" -or Name -eq "openshiftuserstst"}  -Properties * | Get-ADGroupMember | Get-ADUser -Properties mail,displayname | select mail,displayname | export-csv -Encoding utf8 brugere
  13 Get-ADGroup -Filter {Name -eq "openshiftusers" -or Name -eq "openshiftuserstst"}  -Properties * | Get-ADGroupMember | Get-ADUser -Properties *
  14 Get-ADGroup -Filter {Name -eq "openshiftusers" -or Name -eq "openshiftuserstst"}  -Properties * | Get-ADGroupMember | Get-ADUser -Properties * | export-csv -Encoding utf8 .\brugere-alle
  15 Get-ADGroup -filter * -properties *
  16 Get-ADGroup -filter 'CanonicalName -like "OpenShift"' -properties *
  17 Get-ADGroup | where {($_CanonicalName) -contains "OpenShift"}
  18 Get-ADGroup | where {($_CanonicalName) -contains "openshift"}
  19 Get-ADGroup | export-csv -Encoding utf8 alle-grupper
  20 Get-ADGroup -Filter 'name -like "openshift-prod"'
  21 Get-ADGroup -Filter 'name -like "openshift-prod*"'
  22 Get-ADGroup -Filter 'name -like "openshift-prod*"' -Properties *
  23 Get-ADGroup -Filter 'name -like "openshift-prod*"' -Properties * | Get-ADGroupMember
  24 Get-ADGroup -Filter {Name -eq "openshiftusers" -or Name -eq "openshiftuserstst" Name -Like "openshift-prod*"}  -Properties * | Get-ADGroupMember | Get-ADUser -Properties * | export-csv -Encoding utf8 .\brugere-openshift
  25 Get-ADGroup -Filter {Name -eq "openshiftusers" -or Name -eq "openshiftuserstst" }  -Properties * | Get-ADGroupMember | Get-ADUser -Properties * | export-csv -Encoding utf8 .\brugere-openshift
  26 Get-ADGroup -Filter {(Name -eq "openshiftusers" -or Name -eq "openshiftuserstst")}  -Properties * | Get-ADGroupMember | Get-ADUser -Properties * | export-csv -Encoding utf8 .\brugere-openshift
  27 Get-ADGroup -Filter {(Name -eq "openshiftusers" -or Name -eq "openshiftuserstst") -and (Name -like "openshift-prod*")}  -Properties * | Get-ADGroupMember | Get-ADUser -Properties * | export-csv -Encoding utf8 .\brugere-openshift
  28 Get-ADGroup -Filter {(Name -eq "openshiftusers" -or Name -eq "openshiftuserstst" -or Name -Like "openshift-prod*")}  -Properties * | Get-ADGroupMember | Get-ADUser -Properties * | export-csv -Encoding utf8 .\brugere-openshift
  29 Get-ADGroup -Filter {(Name -Like "openshift-prod*")}  -Properties * | Get-ADGroupMember | Get-ADUser -Properties * | export-csv -Encoding utf8 .\brugere-openshift
  30 history
  31 Get-ADGroup -Filter 'name -like "openshift-prod*"' -Properties * | Get-ADGroupMember
  32 Get-ADGroup -Filter 'name -like "openshift-prod*"' -Properties * | Get-ADGroupMember | select -Properties SamAccountName
  33 Get-ADGroup -Filter 'name -like "openshift-prod*"' -Properties * | Get-ADGroupMember | select -Property SamAccountName
  34 Get-ADGroup -Filter 'name -like "openshift-prod*"' -Properties * | Get-ADGroupMember | select -Property SamAccountName | Out-File -FilePath account_names
  35 Get-ADGroup -Filter 'name -like "openshift-prod*"' -Properties * | Get-ADGroupMember | select -Property SamAccountName | export-csv -Encoding utf8 .\account_names.csv
  36 Get-ADGroup -Filter 'name -like "openshift-test*"' -Properties * | Get-ADGroupMember | select -Property SamAccountName | export-csv -Encoding utf8 .\account_names_test.csv
  37 Get-ADGroup -Filter 'name -like "openshift-prod*"' -Properties * | Get-ADGroupMember | Get-ADUser -Properties mail,displayname
  38 Get-ADGroup -Filter 'name -like "openshift-prod*"' -Properties * | Get-ADGroupMember | Get-ADUser -Properties *
  39 Get-ADGroup -Filter 'name -like "openshift-prod*"' -Properties * | Get-ADGroupMember
  40 Get-ADGroup -Filter 'name -like "openshift-prod*"' -Properties * | Get-ADGroupMember -Properties name
  41 Get-ADGroup -Filter 'name -like "openshift-prod*"' -Properties * | Get-ADGroupMember -Property name
  42 Get-ADGroup -Filter 'name -like "openshift-prod*"' -Properties * | Get-ADGroupMember | select -Property name
  43 Get-ADGroup -Filter 'name -like "openshift-prod*"' -Properties * | Get-ADGroupMember | select -Property name | export-csv -Encoding utf8 members_prod
  44 Get-ADGroup -Filter 'name -like "openshift-prod*"' -Properties * | Get-ADGroupMember |  Get-ADUser -Properties mail,displayname | export-csv users_prod
  45 history
  46 history
  47 history
  48 Get-ADGroup -Filter 'name -like "openshift-prod*"' -Properties * | Get-ADGroupMember |  Get-ADUser -Properties mail,displayname | export-csv users_prod
  49 Get-ADGroup -Filter 'name -like "openshift-prod*"' -Properties * | Get-ADGroupMember |  Get-ADUser | export-csv users_prod
  50 Get-ADGroup -Filter 'name -like "openshiftusers"' -Properties * | Get-ADGroupMember |  Get-ADUser | export-csv users_prod
  51 Get-ADGroup -Filter 'name -like "openshiftuserstst"' -Properties * | Get-ADGroupMember |  Get-ADUser | export-csv users_test
  52 Get-ADGroup -Filter 'name -like "openshiftuserstst"' -Properties * | Get-ADGroupMember |  Get-ADUser -Properties * | export-csv users_test
  53 podman machine list
  54 podman machine start
  55 podman machine ssh
  56 podman machine ssh --username root
  57 podman machine ssh
  58 oc login https://ocpt.ccta.dk:8443 --token=sN3uu3EBoa8M1z0zu9IwY0BJDJeavDPo2ov7O4290Dg
  59 Get-ADUser -Filter 'name -eq "W18949"'
  60 Get-ADUser -Filter 'name -eq "W87236"'
  61 Get-ADUser -Filter 'name -eq "W87236"' -Properties *
  62 Get-ADPrincipalGroupMembership W87236
  63 Get-ADPrincipalGroupMembership KristianNygaard.Jensen@ufst.dk
  64 Get-ADPrincipalGroupMembership ccta.dk/Koncern/Brugere/Konsulenter/W87236
  65 Get-ADUser -Filter 'name -eq "W87236"' -Properties memberof | select -expand memberof
  66 Get-ADUser -Filter 'name -eq "W87236"' -Properties Department


