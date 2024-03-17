# Rust Binary
if [[ -e "/home/archmage/.cargo/bin" ]]; then
  path+=('/home/archmage/.cargo/bin')
else
  echo "Rust Cargo Bin Does Not Exist"
fi

export PATH
