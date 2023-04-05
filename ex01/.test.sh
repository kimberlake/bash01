file=print_groups.sh
FT_USER=$(whoami)
input=$(bash $file)
output="2020,everyone,netaccounts,_developer"

if [[ "$input" = "$output" ]]; then
  echo "✔ - passed"
else
  echo "Need: $input"
  echo " Got: $output"
  echo "✖ - failed"
fi

