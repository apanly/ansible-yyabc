自动化搭建个人网站环境
=====================
#个人网站结构
├── book        图书馆系统 book.yyabc.org
├── cdnstatic   常用静态文件  cndstatic.yyabc.org
├── oauth       网站通行证    oauth.yyabc.org
├── sqls        表结构
└── www         主站英语学习社区   www.yyabc.org yyabc.org

#资源地址
* 图书馆系统 [项目地址](git@github.com:apanly/bookshare.git)
* 常用静态文件 [项目地址](git@github.com:apanly/staticsource.git)
* 网站通行证 [项目地址](git@github.com:apanly/oauth.git)
* 主站英语学习社区 [项目地址](git@github.com:apanly/studyabc.git)

# 网站环境要求
* linux  deb家族系统
* nginx
* php-fpm
* mysql
* git

# ansible服务环境要求
* python 最好2.7以上
* 安装ansible 建议源码安装
 * wget https://pypi.python.org/packages/source/a/ansible/ansible-1.4.4.tar.gz
 * python setup.py install
* ansible入门学习 [学习](http://tech.yyabc.org/39.html)

#如何访问网站
* www.yyabc.test  book.yyabc.test oauth.yyabc.test
* 请在要访问的电脑上设置以上域名的host

#如何搭建
* 修改host.home中的机器ip地址
* 运行命令 ansible-playbook yyabc.yml -i host.home
