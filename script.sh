node_name = $1
if [ $node_name = 'node1' ]; then 
  initResult=$(vault operator init -format=json -key-shares=1 -key-threshold=1)
  echo $initResult | jq  > data.json
fi
