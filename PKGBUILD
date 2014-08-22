pkgname=biicode
pkgver=1.3.3
pkgrel=0
pkgdesc="Simple C/C++ file-based dependency manager"
arch=('i686' 'x86_64')
url="www.biicode.com"
license=('unknown')

source=("https://s3.amazonaws.com/biibinaries/release/1.3.3/bii-ubuntu32_1_3_3.deb")
md5sums=('fd385f488eaf28182b99c52b9bb3e960')

package()
{
    echo "Extracting sources..."
    
    mkdir "${pkgdir}"/data
    tar -xvzf data.tar.gz -C "${pkgdir}"/data
    mkdir "${pkgdir}"/control                                                                                                                                                      
    tar -xvzf control.tar.gz -C "${pkgdir}"/control
    
    echo "Copying data..."

    cd "${pkgdir}"/data/
    
    cp ./usr/ / -v -r
     
    
    echo "Generating links..."

    cd "${pkgdir}"/control

    ./postinst
}
