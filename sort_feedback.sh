# Fid and print the positive feedback
echo -e "\n"
echo "Positive feedback:"
echo "=================="
grep "^pos:" shell-feedback.txt | awk -F: '{print $2}' > positive-shell.out

# Find and print the negative feedback
printf "\n\n"
echo "Negative feedback:"
echo "=================="
grep "^neg:" shell-feedback.txt | cut -d':' -f2 > negative-shell.out
