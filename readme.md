ansible运维工具
=================
* 自动化部署个人网站yyabc,具体步骤请查看详细步骤[详细步骤](ansible-yyabc/readme.md)


#注意事项
* notify只会在本次task有所变化的时候才会执行

官方解释:The act of a task registering a change event and informing a handler task that another action needs to be run at the end of the play. If a handler is notified by multiple tasks, it will still be run only once. Handlers are run in the order they are listed, not in the order that they are notified

* ANSIBLE_NOCOWS=1 可以屏蔽ansible很搓的cow提示