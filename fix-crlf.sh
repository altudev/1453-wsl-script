#!/bin/bash

# CRLF to LF converter for the linux-ai-setup-script.sh
# This helper script fixes Windows line endings before running bash -n

SCRIPT_PATH="${1:-src/linux-ai-setup-script.sh}"

if [ ! -f "$SCRIPT_PATH" ]; then
    echo "Error: Script file not found: $SCRIPT_PATH"
    echo "Usage: $0 [path/to/script.sh]"
    exit 1
fi

echo "Checking for Windows line endings in: $SCRIPT_PATH"

# Check if file has CRLF
has_crlf=false
if command -v file &> /dev/null && file "$SCRIPT_PATH" | grep -q "CRLF"; then
    has_crlf=true
elif command -v od &> /dev/null && od -c "$SCRIPT_PATH" 2>/dev/null | head -20 | grep -q $'\r'; then
    has_crlf=true
fi

if [ "$has_crlf" = true ]; then
    echo "Windows line endings (CRLF) detected. Converting to Unix format (LF)..."

    # Create backup
    cp "$SCRIPT_PATH" "${SCRIPT_PATH}.bak"
    echo "Backup created: ${SCRIPT_PATH}.bak"

    # Try different methods to convert
    if command -v dos2unix &> /dev/null; then
        dos2unix "$SCRIPT_PATH"
        echo "Fixed using dos2unix"
    elif command -v sed &> /dev/null; then
        sed -i 's/\r$//' "$SCRIPT_PATH"
        echo "Fixed using sed"
    elif command -v tr &> /dev/null; then
        tr -d '\r' < "$SCRIPT_PATH" > "${SCRIPT_PATH}.tmp" && mv "${SCRIPT_PATH}.tmp" "$SCRIPT_PATH"
        echo "Fixed using tr"
    else
        echo "Error: No suitable tool found for conversion (need dos2unix, sed, or tr)"
        echo "Manual fix: sed -i 's/\r$//' $SCRIPT_PATH"
        exit 1
    fi

    chmod +x "$SCRIPT_PATH"
    echo "✓ Line endings fixed successfully!"
else
    echo "✓ File already has Unix line endings (LF). No conversion needed."
fi

# Test syntax
echo ""
echo "Testing script syntax..."
if bash -n "$SCRIPT_PATH"; then
    echo "✓ Syntax check passed!"
else
    echo "✗ Syntax errors found. Please review the script."
    exit 1
fi

echo ""
echo "Script is ready to run: bash $SCRIPT_PATH"