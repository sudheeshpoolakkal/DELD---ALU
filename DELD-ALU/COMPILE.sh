#!/bin/bash
# Compilation script for 4-Bit ALU Project Report

echo "======================================"
echo "4-Bit ALU Report Compilation Script"
echo "======================================"
echo ""

# Step 1: First LaTeX pass
echo "Step 1/4: First LaTeX pass..."
xelatex -interaction=nonstopmode thesis.tex > /dev/null 2>&1
if [ -f thesis.pdf ]; then
    echo "✓ First pass completed"
else
    echo "✗ First pass failed - check thesis.log for errors"
    exit 1
fi

# Step 2: Bibliography
echo "Step 2/4: Processing bibliography..."
bibtex thesis > /dev/null 2>&1
echo "✓ Bibliography processed"

# Step 3: Second LaTeX pass
echo "Step 3/4: Second LaTeX pass..."
xelatex -interaction=nonstopmode thesis.tex > /dev/null 2>&1
echo "✓ Second pass completed"

# Step 4: Final LaTeX pass
echo "Step 4/4: Final LaTeX pass..."
xelatex -interaction=nonstopmode thesis.tex > /dev/null 2>&1
if [ -f thesis.pdf ]; then
    echo "✓ Final pass completed"
else
    echo "✗ Final pass failed"
    exit 1
fi

echo ""
echo "======================================"
echo "✓ Compilation successful!"
echo "======================================"
echo ""
echo "Output file: thesis.pdf"
ls -lh thesis.pdf
echo ""
PAGES=$(pdfinfo thesis.pdf 2>/dev/null | grep Pages | awk '{print $2}')
if [ ! -z "$PAGES" ]; then
    echo "PDF created with $PAGES pages"
fi
echo ""
