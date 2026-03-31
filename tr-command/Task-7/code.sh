
# Apply ROT13 Encoding

# Shift letters by 13 positions


echo "SecretToken123 CPU Spike Critical" > secret_log.txt

cat secret_log.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'


# Running ROT13 twice returns the original text.
cat secret_log.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m' | tr 'A-Za-z' 'N-ZA-Mn-za-m'

# Also see overthewire bandit.
