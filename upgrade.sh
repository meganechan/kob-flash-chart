read -p 'namespace : ' namespace
read -p 'version : ' version

helm list -n $namespace | grep acc | awk '{print $1 " ./$version"}' | xargs -L1 helm upgrade -n $namespace ./0.5