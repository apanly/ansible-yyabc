自动化搭建个人网站环境
=====================
#个人网站结构
* ├── book        图书馆系统    [book.yyabc.org](http://book.yyabc.org)
* ├── cdnstatic   常用静态文件  [cndstatic.yyabc.org](http://cndstatic.yyabc.org)
* ├── oauth       网站通行证    [oauth.yyabc.org](http://oauth.yyabc.org)
* ├── sqls        表结构
* └── www         主站英语学习社区   [www.yyabc.org yyabc.org](http://www.yyabc.org)

#资源地址
* 图书馆系统 [项目地址](https://github.com/apanly/bookshare)
* 常用静态文件 [项目地址](https://github.com/apanly/staticsource)
* 网站通行证 [项目地址](https://github.com/apanly/oauth)
* 主站英语学习社区 [项目地址](https://github.com/apanly/studyabc)

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
* ansible入门学习 [学习去](http://tech.yyabc.org/39.html)

#如何访问网站
* www.yyabc.test book.yyabc.test oauth.yyabc.test
* 请在要访问的电脑上设置以上域名的host

#如何搭建
* 修改host.home中的机器ip地址
* 准备工作
 * 将ansible服务所在机器的ssh公钥放到网站服务机器的~/.ssh/authorized_keys中(需要分别给root帐号和一个个人帐号)
 * 需要网站服务机器可以直接git ssh(可以使用ssh git@github.com测试看看)
* 运行命令 ansible-playbook yyabc.yml -i host.home
