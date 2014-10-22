# Maintainer: Manu Sánchez (Manu343726) <Manu343726.public@gmail.com>

_version="1.9"
_version_label=${_version//./_}
_debname=""
pkgname=biicode
pkgver=$_version
pkgrel=1
pkgdesc="Simple C/C++ file-based dependency manager"
arch=('i686' 'x86_64' 'armv6h')
url="http://www.biicode.com"
license=('unknown')
install=biicode.install

depends=('cmake>=3.0.2','zlib','lib32zlib','glibc','sqlite','wget')
makedepends=('dpkg')

declare -A _package_sums=(["1.3.3 i686"]="fd385f488eaf28182b99c52b9bb3e960"
                          ["1.4.1 i686"]="167d08ab88d2de6bdb59629ffad9cfe2"
                          ["1.6 i686"]="ef451f2f76b1a3d88ac52b06b4205bc4"
                          ["1.7.2 i686"]="4f24ec99b737c2759b30d5dd4dd1ff18"
                          ["1.7.3 i686"]="5de510fe6c5878fdac22a3023a2dfc34"
                          ["1.8.4 i686"]="5e74dd0fa61b7d630063c188cf7e5f46"
                          ["1.9 i686"]="3d6ba8bed016d05e3b3cc080500cdc3f"

                          ["1.3.3 x86_64"]="b0a2e4f2be5a11d995f550305cbe1569"
                          ["1.4.1 x86_64"]="040c405c98b20803caa9bd8a56c2de95"
                          ["1.6 x86_64"]="354602e2c05a818dc11da718f6e2ec64"
                          ["1.7.2 x86_64"]="9b93fac2eda28e00f821b4181dbaca18"
                          ["1.7.3 x86_64"]="322fb3c50b694d131d4d47d3d7481225"
                          ["1.8.4 x86_64"]="04b5a5119fe2655501ff59375250e42c"
                          ["1.9 x86_64"]="6ed6a843633a92609883f7b26228d61b"
                          
                          ["1.7.3 armv6h"]="d39cdc4303f78b4a0577789866ab8258"
                          ["1.8.4 armv6h"]="861a93d96ce9defee64ce6bd3286fe9b"
                          ["1.9 armv6h"]="cb6365a15bd8b5a80d8246db06b8612f")


declare -A _package_prefix=(["i686"]="ubuntu-32"
                            ["x86_64"]="ubuntu-64"
                            ["armv6h"]="debian-armv6")

_package="bii-${_package_prefix[${CARCH}]}_${_version_label}.deb"
_source_url="https://s3.amazonaws.com/biibinaries/release/${_version}/${_package}"


source=(.AURINFO "${_source_url}")                                                                
md5sums=(SKIP "${_package_sums[${_version} ${CARCH}]}")


noextract=('${_package}')

package()
{
    dpkg -i --ignore-depends=zlib1g,libc-bin,libsqlite3-0,wget,lib32z1 "${srcdir}/${_package}" 
}
