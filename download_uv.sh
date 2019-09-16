#!/bin/bash

if [ "$#" -eq 1 ]; then
    outputPath="$1/doc3d"
else
    outputPath="$HOME/Downloads/doc3d"
fi

if ! [ -x "$(command -v wget)" ]; then
    echo "Error!: wget is not installed! Please install it and try again"
    exit 1
fi

echo -e "\n### ------------------------------------------------------- ###\n"
echo "### Downloading into $outputPath"
echo -e "\n### ------------------------------------------------------- ###\n"

doc3d_download() {
    local url=$1
    local path=$2
    local files=$3
    
    echo -ne "### Downloading "$files" ###\t\n"
    wget --continue --directory-prefix="$path" "$url" 2>&1
    echo -ne "\b\b\b\b"
    echo " # done"
}

doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_1.zip" "$outputPath/" "UVs"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_2.zip" "$outputPath/" "UVs"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_3.zip" "$outputPath/" "UVs"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_4.zip" "$outputPath/" "UVs"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_5.zip" "$outputPath/" "UVs"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_6.zip" "$outputPath/" "UVs"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_7.zip" "$outputPath/" "UVs"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_8.zip" "$outputPath/" "UVs"

echo -e "\n### ------------------------------------------------------- ###\n"
echo "### Unzipping downloaded files ###"
echo -e "\n### ------------------------------------------------------- ###\n"
echo -e $outputPath"/uv_1.zip .."
unzip -q $outputPath"/uv_1.zip" -d $outputPath 
echo -e $outputPath"/uv_2.zip .."
unzip -q $outputPath"/uv_2.zip" -d $outputPath
echo -e $outputPath"/uv_3.zip .."
unzip -q $outputPath"/uv_3.zip" -d $outputPath
echo -e $outputPath"/uv_4.zip .."
unzip -q $outputPath"/uv_4.zip" -d $outputPath 
echo -e $outputPath"/uv_5.zip .."
unzip -q $outputPath"/uv_5.zip" -d $outputPath
echo -e $outputPath"/uv_6.zip .."
unzip -q $outputPath"/uv_6.zip" -d $outputPath
echo -e $outputPath"/uv_7.zip .."
unzip -q $outputPath"/uv_7.zip" -d $outputPath
echo -e $outputPath"/uv_8.zip .."
unzip -q $outputPath"/uv_8.zip" -d $outputPath

echo -e "\n### ------------------------------------------------------- ###\n"
echo "### Cleaning Up ###"
echo -e "\n### ------------------------------------------------------- ###\n"
rm $outputPath"doc3d/uv_1.zip" 
rm $outputPath"doc3d/uv_2.zip" 
rm $outputPath"doc3d/uv_3.zip"
rm $outputPath"doc3d/uv_4.zip" 
rm $outputPath"doc3d/uv_5.zip" 
rm $outputPath"doc3d/uv_6.zip"
rm $outputPath"doc3d/uv_7.zip" 
rm $outputPath"doc3d/uv_8.zip" 


echo -e "\n### ------------------------------------------------------- ###\n"
echo "### All done!"
echo -e "\n### ------------------------------------------------------- ###\n"



