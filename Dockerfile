# 1.【指定基础镜像】
# 这是必须的第一步，我们选择官方的python3.9镜像作为基础环境
# slim是版本精简版，体积小，适合生产环境
FROM python:3.10-slim


# 2.【设置共组目录】
#在容器内部创建一个目录/app，并在以后所有的操作都在这个目录下进行。
# 如果目录不存在，Docker会自动创建他。
WORKDIR /app


# 3. 【复制依赖文件】
# 先把依赖文件requirements.txt复制到容器中。
# 注意：这里先复制requirements.txt再复制代码，是为了利用Docker的"缓存机制"。
# 只要你的依赖不变，下次构建镜像时就不需要重新下载，速度极快。
COPY requirements.txt .



# 4.【安装依赖】
# 运行pip install 命令安装所有的依赖库
# --no-cache-dir 参数是为了减小镜像的体积
# 这里我加了一个国内源 -i https://pypi.tuna.tsinghua.edu.cn/simple,加快下载速度
RUN pip install --no-cache-dir -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple/


# 5. 【复制项目代码】
# 将本地当前目录（.）下的所有文件（测试脚本、配置文件等）复制到容器的/app目录中
COPY . .



# 6. 【定义启动容器】
# 这是容器启动时默认要执行的命令
# 假设你的主测试脚本叫run_test.py，这里就写执行它
# 注意：CMD只能有一条，如果写了多条，只有最后一条生效
CMD ["python","test_01.py"]
