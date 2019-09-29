#7.View and end the process|查看并结束进程
Kall_Kam(){
	echo "USER    PID   %CPU %MEM VSZ    RSS  TTY    STAT   START   TIME COMMAND"
	ps aux | grep KaM
	echo -e "\033[32m \033[05m命令Code:kill xxxxx //（Enter the PID end process|输入PID结束进程）\033[0m"
}
#6.Keep running in the background|保持在后台运行
Keep_Kam(){
	nohup ./KaM_Remake_Server_x86_64 > log.out 2> log.err < /dev/null &
	echo -e "\033[32m \033[05mUSER    PID   %CPU %MEM VSZ    RSS  TTY    STAT   START   TIME COMMAND\033[0m"
	ps aux | grep KaM
	menu_status
}
#5.Debugging and running the KaM server (not much effect?)|调试运行KaM服务器（没多大作用？）
Test_Kam(){
	echo -e "\033[32m \033[05mHold Ctrl + C to stop debugging|按住Ctrl +C停止调试\033[0m"
	./KaM_Remake_Server_x86_64
	menu_status
}
#4.Administrator privileges run and view KaM server status|管理员权限运行并查看KaM服务器状态
Install_Kam(){
	echo -e "\033[32m \033[05mHold Ctrl + C to stop debugging|按住Ctrl +C停止调试\033[0m"
	chmod +x KaM_Remake_Server_x86_64
	menu_status
}
#3.Decompression KaM.ZIP|解压KaM.ZIP
Unzip (){
	unzip kam_remake_server_r6720.zip
	[[ ! -e "kam_remake_server_r6720.zip" ]] && echo -e "${Error} KaM Server decompression failed !|KaM服务端 解压失败 !" && rm -rf kam_remake_server_r6720.zip && exit 1
	menu_status
}
#2.Install ZIP decompression tool|安装ZIP解压工具
Install_ZIP(){
	sudo apt-get install unzip
	menu_status
}
#1.Download the r6270 installation package|下载r6270安装包
Download_KaM(){
	wget -N --no-check-certificate "https://lewin.hodgman.id.au/kam/downloads/kam_remake_server_r6720.zip"
	[[ ! -e "kam_remake_server_r6720.zip" ]] && echo -e "${Error} KaM server tarball download failed !|KaM服务端 压缩包 下载失败 !" && rm -rf kam_remake_server_r6720.zip && exit 1
	menu_status

}
One_KaM(){
	sudo apt-get install unzip
	wget -N --no-check-certificate "https://lewin.hodgman.id.au/kam/downloads/kam_remake_server_r6720.zip"
	[[ ! -e "kam_remake_server_r6720.zip" ]] && echo -e "${Error} KaM server tarball download failed !|KaM服务端 压缩包 下载失败 !" && rm -rf kam_remake_server_r6720.zip && exit 1
	unzip kam_remake_server_r6720.zip
	[[ ! -e "kam_remake_server_r6720.zip" ]] && echo -e "${Error} KaM Server decompression failed !|KaM服务端 解压失败 !" && rm -rf kam_remake_server_r6720.zip && exit 1
	nohup ./KaM_Remake_Server_x86_64 > log.out 2> log.err < /dev/null &
	echo -e "\033[32m \033[05mUSER    PID   %CPU %MEM VSZ    RSS  TTY    STAT   START   TIME COMMAND\033[0m"
	ps aux | grep KaM

}
menu_status(){
echo -e "\033[32m \033[05m
	KaM服务器安装一键管理脚本
	KaM server installs one-click management script
  ---- QQ群:625021082 | www.kamremake.com----
      ---- Make:China By:Rolly  ---- 

0.One-click installation of KaM server|一键安装KaM服务器
1.Download KaM Server|下载KaM服务器.zip
2.Install ZIP decompression tool|安装ZIP解压工具
3.Extract the KaM server.zip|解压KaM服务器.zip
4.Debugging and running the KaM server (not much effect?)|调试运行KaM服务器（没多大作用？）
5.Administrator privileges run and view KaM server status|管理员权限运行并查看KaM服务器状态
6.KaM server keeps running in the background|KaM服务器保持在后台运行
7.View and end the KaM server process|查看并结束KaM服务器进程\033[0m"
	echo && read -e -p "Please key in numbers|请输入数字 [0-7]：" num
case "$num" in
	0)
	One_KaM
	;;
	1)
	Download_KaM
	;;
	2)
	Install_ZIP
	;;
	3)
	Unzip
	;;
	4)
	Install_Kam
	;;
	5)
	Test_Kam
	;;
	6)
	Keep_Kam
	;;
	7)
	Kall_Kam
	;;
	*)
	echo -e "${Error} Please enter the correct number|请输入正确的数字 [0-7]"
	;;
esac
}
echo -e "\033[32m \033[05m
	KaM服务器安装一键管理脚本
	KaM server installs one-click management script
  ---- QQ群:625021082 | www.kamremake.com----
      ---- Make:China By:Rolly  ---- 

0.One-click installation of KaM server|一键安装KaM服务器
1.Download KaM Server|下载KaM服务器.zip
2.Install ZIP decompression tool|安装ZIP解压工具
3.Extract the KaM server.zip|解压KaM服务器.zip
4.Debugging and running the KaM server (not much effect?)|调试运行KaM服务器（没多大作用？）
5.Administrator privileges run and view KaM server status|管理员权限运行并查看KaM服务器状态
6.KaM server keeps running in the background|KaM服务器保持在后台运行
7.View and end the KaM server process|查看并结束KaM服务器进程\033[0m"
	echo && read -e -p "Please key in numbers|请输入数字 [0-7]：" num
case "$num" in
	0)
	One_KaM
	;;
	1)
	Download_KaM
	;;
	2)
	Install_ZIP
	;;
	3)
	Unzip
	;;
	4)
	Install_Kam
	;;
	5)
	Test_Kam
	;;
	6)
	Keep_Kam
	;;
	7)
	Kall_Kam
	;;
	*)
	echo -e "${Error} Please enter the correct number|请输入正确的数字 [0-7]"
	;;
esac