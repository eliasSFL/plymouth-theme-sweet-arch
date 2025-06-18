#!/bin/bash

# Test script for Sweet Arch LUKS Plymouth theme

echo "Testing Sweet Arch LUKS Plymouth theme..."

# Check if theme files exist
echo "Checking theme files..."
if [ ! -f "sweet-arch-luks/sweet-arch-luks.script" ]; then
    echo "ERROR: sweet-arch-luks.script not found"
    exit 1
fi

if [ ! -f "sweet-arch-luks/logo.png" ]; then
    echo "ERROR: logo.png not found"
    exit 1
fi

if [ ! -f "sweet-arch-luks/spinner.png" ]; then
    echo "ERROR: spinner.png not found"
    exit 1
fi

# Check LUKS dialog files
echo "Checking LUKS dialog files..."
for file in box.png bullet.png entry.png lock.png; do
    if [ ! -f "sweet-arch-luks/$file" ]; then
        echo "ERROR: $file not found (required for LUKS support)"
        exit 1
    fi
done

echo "All theme files found!"
echo "Theme includes LUKS password support with dialog images."

# Check script syntax (basic check)
echo "Checking script syntax..."
if grep -q "Plymouth.SetDisplayPasswordFunction" sweet-arch-luks/sweet-arch-luks.script; then
    echo "✓ LUKS password callback function found"
else
    echo "✗ LUKS password callback function missing"
    exit 1
fi

if grep -q "dialog_setup" sweet-arch-luks/sweet-arch-luks.script; then
    echo "✓ Dialog setup function found"
else
    echo "✗ Dialog setup function missing"
    exit 1
fi

echo "Theme appears to be properly configured with LUKS support!"
echo ""
echo "To install and test:"
echo "1. sudo cp -r sweet-arch-luks /usr/share/plymouth/themes/"
echo "2. sudo plymouth-set-default-theme -R sweet-arch-luks"
echo "3. Reboot to test LUKS password dialog" 