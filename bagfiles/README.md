# rosbagRecord

## 使用方法

### 录制.bag

- 在当前目录下打开终端，执行

```
rosbag record /topicA /topicB [-o bagName] 
```

即可监听topicA、topicB话题下发布的信息

其后可选参数为生成的.bag文件命名， -o 会生成bagName-YYYY-MM-DD-HH-MM-SS.bag而 -O则不含有时间信息, 不填可选参数则bag名称只含有时间

- 查看已创建.bag文件信息，执行

```
rosbag info bagName.bag
```

查看bag含有的message条数、话题、时间等信息

### 播放.bag

- 在当前目录下打开终端，执行

```
rosbag play bagName.bag
```

即可回放rosbag内所有topic，注意rosMaster需要打开。

- 指定topic

```
rosbag play bagName.bag --topic /topicA /topicB
```

