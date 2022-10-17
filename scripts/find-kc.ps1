function begin {
	param (
		$inputFile
	)
	$pathParts = $inputFile.split("\");
	$depFile = [string]::Join("\", $pathParts[0..($pathParts.length -2)]) + "\departments";
	Get-Content $inputFile | ForEach-Object {
		$Line = $_;
		$users = $Line.split(",");
		$departments = @{}
		For($i=0; $i -lt $users.Length; $i++){
			$user = $users[$i].Trim()
			$user_department = get-kc $user
			if (-Not $departments.ContainsKey($user_department.Department)){
				$departments.Add($user_department.Department, @{
					KC = $user_department.KC
					Users = [System.Collections.Generic.List[string]]::new()
				})
				
			}
			$departments[$user_department.Department].users.Add($user)
		}
		Write-Output $departments
		$departments.GetEnumerator() | select @{N='Department';E={$_.Key}}, `
			@{N='KC';E={$_.Value.KC.displayName + ',' + $_.Value.KC.mail}}, `
			@{N='Brugere';E={$_.Value.users -join ","}}|Export-CSV -Encoding utf8 $depFile 
	}
}

function get-kc {
	param (
		$userid
	)
	$department = Get-ADUser -Filter "cn -eq ""$userid""" -ResultSetSize 1 -Properties Department | select -ExpandProperty Department
	$kc = Get-ADUser -Filter {Department -eq $department -and title -eq "KC" } -ResultSetSize 1 -Properties displayName,mail | select displayName,mail
	@{
		Department = $department
		KC = $kc
	}
}

begin $args[0];