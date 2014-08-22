pkgname=biicode
pkgver=1.3.3
pkgrel=0
pkgdesc="Simple C/C++ file-based dependency manager"
arch=('i686')
url="www.biicode.com"
license=('unknown')

source=("https://s3.amazonaws.com/biibinaries/release/1.3.3/bii-ubuntu32_1_3_3.deb")
md5sums=('fd385f488eaf28182b99c52b9bb3e960')

package()
{
    tar -zxf data.tar.gz -C "${pkgdir}"

    install -Dm755 "${pkgdir}" /usr/share
}
