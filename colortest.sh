echo ""
echo "if you don't see 256 colors, then you have to change putty config:"
echo "Connection -> Data -> Terminal-type string: putty-256color"
echo ""
for ((color = 0; color <= 255; color++)); do
 tput setaf "$color"
 printf "test"
done

# http://blog.sanctum.geek.nz/putty-configuration/
