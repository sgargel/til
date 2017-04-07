# Quando ho necessità di ricreare i symlink da un server remoto:
<pre>
ssh root@remote "find /path -type l" | while read LINE ; do 
	LINKNAME=`echo $LINE | awk {'print $9'}` ; 
	ORIG=`echo $LINE | awk {'print $11'}`; 
	cd `dirname $LINKNAME` ; 
	ln -s $ORIG $LINKNAME; 
done
</pre>
