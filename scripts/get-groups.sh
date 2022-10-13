oc get groups -o json | jq '[.items[]|{name: .metadata.name, users: .users}]'
