tmp=$PWD/fdz
if [ ! -d "$tmp" ]; then
## 1. 获取代码
git clone http://10.88.69.221:8090/fil-group/fdz

cd fdz
./utils/ep -c clone -s source/repo.lst -w $PWD/heib
#注意：-w 后面的路径要是绝对路径！！！

## 2. 编译代码
cd $PWD/heib
FFI_BUILD_FROM_SOURCE=1 make
else
	echo "fdz文件夹已存在"
fi
