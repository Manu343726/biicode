# Maintainer: Manu Sánchez (Manu343726) <Manu343726.public@gmail.com>

_version="1.3.3"
_version_label=${_version//./_}

pkgname=biicode
pkgver=$_version
pkgrel=3
pkgdesc="Simple C/C++ file-based dependency manager"
arch=('i686' 'x86_64')
url="http://www.biicode.com"
license=('unknown')
install=biicode.install

declare -A _package_32bit_sums=(["1.3.3"]="fd385f488eaf28182b99c52b9bb3e960"
                                ["1.4.1"]="167d08ab88d2de6bdb59629ffad9cfe2")

declare -A _package_64bit_sums=(["1.3.3"]="b0a2e4f2be5a11d995f550305cbe1569"
                                ["1.4.1"]="040c405c98b20803caa9bd8a56c2de95")

case $CARCH in 
    ('i686')
        source=(.AURINFO "https://s3.amazonaws.com/biibinaries/release/${_version}/bii-ubuntu32_${_version_label}.deb")
        md5sums=(SKIP "${_package_32bit_sums[$_version]}")
    ;;
    ('x86_64')
        source=(.AURINFO "https://s3.amazonaws.com/biibinaries/release/${_version}/bii-ubuntu64_${_version_label}.deb")                                                                
        md5sums=(SKIP "${_package_64bit_sums[$_version]}")
esac

prepare()
{
    cd $srcdir
    
    tar -xzf data.tar.gz
    rm data.tar.gz
}

package()
{
    cd $srcdir
    
    install -dm755 "${pkgdir}/usr/lib"
    install -d     "${pkgdir}/usr/lib/share/doc"
    cp -r -f "${srcdir}/usr/lib"       "${pkgdir}/usr"   
    cp -r -f "${srcdir}/usr/share/doc" "${pkgdir}/usr"
}
