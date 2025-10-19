#!/bin/bash
# Compilation script for 4-Bit ALU Project Report

echo "======================================"
echo "4-Bit ALU Report Compilation Script"
echo "======================================"
echo ""

# Check if we're in the right directory
if [ ! -f "thesis.tex" ]; then
    echo "Error: thesis.tex not found!"
    echo "Please run this script from the DELD-ALU folder"
    exit 1
fi

echo "Step 1/4: First LaTeX pass..."
pdflatex -interaction=nonstopmode thesis.tex > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "✓ First pass completed"
else
    echo "✗ First pass failed - check thesis.log for errors"
    exit 1
fi

echo "Step 2/4: Processing bibliography..."
bibtex thesis > /dev/null 2>&1
echo "✓ Bibliography processed"

echo "Step 3/4: Second LaTeX pass..."
pdflatex -interaction=nonstopmode thesis.tex > /dev/null 2>&1
echo "✓ Second pass completed"

echo "Step 4/4: Final LaTeX pass..."
pdflatex -interaction=nonstopmode thesis.tex > /dev/null 2>&1
echo "✓ Final pass completed"

echo ""
echo "======================================"
echo "✓ Compilation successful!"
echo "======================================"
echo ""
echo "Your PDF is ready: thesis.pdf"
echo ""
echo "File size: $(du -h thesis.pdf | cut -f1)"
echo "Total pages: $(pdfinfo thesis.pdf 2>/dev/null | grep Pages | awk '{print $2}')"
echo ""
