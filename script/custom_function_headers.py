from beet import Context
import time
from stouputils import measure_time, progress


@measure_time(message="Execution time of 'custom_function_headers'")
def add_function_headers(ctx: Context):
    """自定义函数头部添加插件 - 为所有函数添加标准化的头部注释"""
    
    # 获取所有函数
    functions = ctx.data.functions
    header_count = 0
    
    for function_path, function_obj in functions.items():
        # 跳过已经包含头部的函数
        if function_obj.text.startswith("#>"):
            continue
        
        # 添加自定义头部
        header = create_function_header(ctx)
        function_obj.text = header + function_obj.text
        
        header_count += 1
        


def create_function_header(ctx: Context) -> str:
    """创建函数头部注释"""
    
    header = f"""
# 项目: {ctx.project_name}
# 作者: {ctx.project_author}
# 版本: {ctx.project_version}
# 构建时间： {time.strftime("%Y.%m.%d %H:%M:%S")}

"""
    return header

def beet_default(ctx: Context):
    add_function_headers(ctx)