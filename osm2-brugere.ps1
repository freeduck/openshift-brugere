Get-ADGroup -Filter 'name -eq "openshift-test-project-editor-osm2-global"' | Get-ADGroupMember | Get-ADUser -Property UserPrincipalName, mail, Displayname | export-csv -Encoding utf8 osm2-brugere
