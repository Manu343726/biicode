#!/bin/bash

version=$1
version_label=${version//./_}
arch=$2
url="https://s3.amazonaws.com/biibinaries/release/${version}/bii-ubuntu${arch}_${version_label}.deb"
package="bii-ubuntu${arch}_${version_label}.deb"
tmp_folder="checksums_tmp"

mkdir "${tmp_folder}"
cd "./${tmp_folder}"

wget $url
md5sum $package
cd ..
rm -r -f "./${tmp_folder}" 
