# UTF-8 Encoding:
---
### Name: Leonard Balunes                               <!-- response -->
### GitHub Account:  lbalunes                    <!-- response -->

## Questions

### Unicode to UTF-8 [Encoding](encode_utf8.md)
1. Convert the following Unicode Characters into binary:
   1. U+0920
      - 0000 1001 0010 0000  <!-- response -->
   1. U+0042
      -  0000 0000 0100 0010 <!-- response -->
   1. U+5555
      - 0101 0101 0101 0101  <!-- response -->

1. Determine the number of bytes needed to encode the following values into UTF-8.
   1. U+0920
      - 3  <!-- response -->
   1. U+0042
      - 1  <!-- response -->
   1. U+5555
      -  3 <!-- response -->

1. Provide the UTF-8 binary encoding for the following values:
   1. U+0920
      - 1110 0000 1010 0100 1010 0000  <!-- response -->
   1. U+0042
      -  0100 0010 <!-- response -->
   1. U+5555
      -  1110 0101 1001 0101 1001 0101 <!-- response -->

1. Provide the UTF-8 hex encoding for the following values:
   1. U+0920
      - 16# E0A4A0  <!-- response -->
   1. U+0042
      - 16# 42  <!-- response -->
   1. U+5555
      - 16# E59595 <!-- response -->

### Unicode to UTF-8 [Decoding](decode_utf8.md)

Consider the following binary string:
```
01011101111010011010001110110001100001011101000110110010
```

1. Chunk the binary string into bytes:
   -  01011101 <!-- response -->
   -  11101001<!-- response -->
   -  10100011 <!-- response -->
   -  10110001 <!-- response -->
   -  10000101 <!-- response -->
   -  11010001         <!-- response -->
   -  10110010 <!-- response -->

1. Gather together the bytes needed for each UTF-8 character:
   - 2# 01011101  <!-- response -->
   - 2# 11101001 10100011 10110001  <!-- response -->
   - 2# 11010001 10110010  <!-- response -->

1. Unpack the payload from each of the UTF-8 characters:
   - 2# 0101 1101 <!-- response -->
   - 2# 1001 1000 1111 0001  <!-- response -->
   - 2# 100 0111 0010  <!-- response -->

1. Decode each of the resulting binary values into hexadecimal:
   - 16# 5D == U+005D  <!-- response -->
   - 16# 98F1 == U+98F1  <!-- response -->
   - 16# 472 == U+0472  <!-- response -->




