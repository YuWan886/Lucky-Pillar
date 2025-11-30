import os
import json
import re
import asyncio
import platform


def should_escape_char(char):
    code_point = ord(char)
    # 私有使用区域
    if 0xE000 <= code_point <= 0xF8FF:
        return True
    return False


async def traverse_and_replace_texts(
    directory, translations, number, output_file_name="zh_cn.json"
):
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith(".json"):
                file_path = os.path.join(root, file)

                # 计算相对路径
                rel_path = os.path.relpath(file_path, directory)
                if "data/" in rel_path:
                    rel_path = rel_path[rel_path.index("data/") + len("data/") :]
                rel_path = rel_path.replace("data/", "")
                key_prefix = rel_path.replace(os.sep, ".")
                if key_prefix.endswith(".json"):
                    key_prefix = key_prefix[:-5]

                # 格式化翻译键前缀
                key_prefix = format_json_translation_key(key_prefix)

                try:
                    with open(file_path, "r", encoding="utf-8") as f:
                        data = json.load(f)

                    print(f"正在处理JSON文件: {file_path}")

                    # 新的data对象
                    new_data = replace_text(data, translations, number, key_prefix)

                    # 写入标准JSON编码，并处理私有使用区域字符
                    json_str = json.dumps(new_data, ensure_ascii=False, indent=4)
                    with open(file_path, "w", encoding="utf-8") as f:
                        f.write(json_str)

                except json.JSONDecodeError as e:
                    print(f"JSON文件 {file_path} 解码错误: {e}")
                    continue
                except Exception as e:
                    print(f"处理JSON文件 {file_path} 时出错: {e}")
                    continue

    # 保存翻译结果到zh_cn.json
    script_dir = os.path.dirname(os.path.abspath(__file__))
    output_file_path = os.path.join(script_dir, output_file_name)

    json_str = json.dumps(translations, ensure_ascii=False, indent=4)
    with open(output_file_path, "w", encoding="utf-8", errors='replace') as out_file:
        out_file.write(json_str)

    print(f"JSON翻译结果已保存至: {output_file_path}")


def format_translation_key(key):
    parts = key.split(".")
    if "function" in parts:
        function_index = parts.index("function")
        if function_index > 0:
            return ".".join([parts[function_index - 1]] + parts[function_index:])
    return key


def format_json_translation_key(key):
    if key.startswith("data."):
        return key.replace("data.", "json.", 1)
    return key


def replace_text(data, translations, number, key_prefix):
    """
    修正版：递归处理所有dict对象中所有text字段，无论嵌套层级，并且处理extra、with、hoverEvent.value等通用文本嵌套结构。
    跳过包含 $( 的内容。
    """
    if isinstance(data, dict):
        # 先递归处理所有 key
        # 注意需要先把extra, with等特殊文本子项递归处理
        new_data = {}
        for key, value in data.items():
            # Minecraft JSON文本常用嵌套字段
            if key in ('extra', 'with') and isinstance(value, list):
                new_data[key] = [replace_text(v, translations, number, key_prefix) for v in value]
            # hoverEvent.value 也常是数组/字典
            elif key == "hoverEvent" and isinstance(value, dict):
                # hoverEvent.value 可能为dict或list
                if 'value' in value:
                    # 递归处理
                    value_copy = value.copy()
                    value_copy['value'] = replace_text(value['value'], translations, number, key_prefix)
                    new_data[key] = value_copy
                else:
                    new_data[key] = replace_text(value, translations, number, key_prefix)
            elif isinstance(value, (dict, list)):
                new_data[key] = replace_text(value, translations, number, key_prefix)
            else:
                new_data[key] = value

        # 只在本dict存在 "text" 且为字符串时替换
        if "text" in data and isinstance(data["text"], str):
            original_text = data["text"]
            
            # 跳过包含 $( 的内容
            if "$(" in original_text:
                print(f"跳过包含 '$(' 的文本: '{original_text}'")
                return new_data

            # 查找是否已有相同文本的翻译键
            existing_key = None
            for trans_key, trans_value in translations.items():
                if trans_value == original_text:
                    existing_key = trans_key
                    break

            if existing_key:
                translation_key = existing_key
                if translations[translation_key] != original_text:
                    print(
                        f"更新翻译键 {translation_key}: '{translations[translation_key]}' -> '{original_text}'"
                    )
                    translations[translation_key] = original_text
            else:
                translation_key = f"{key_prefix}.{number[0]}"
                translation_key = format_json_translation_key(translation_key)
                translation_key = format_translation_key(translation_key)
                translations[translation_key] = original_text
                number[0] += 1

            # 替换text字段
            new_data.pop("text", None)
            new_data["translate"] = translation_key
            new_data["fallback"] = original_text

        return new_data

    elif isinstance(data, list):
        return [replace_text(item, translations, number, key_prefix) for item in data]
    else:
        return data
    """
    修正版：递归处理所有dict对象中所有text字段，无论嵌套层级，并且处理extra、with、hoverEvent.value等通用文本嵌套结构。
    """
    if isinstance(data, dict):
        # 先递归处理所有 key
        # 注意需要先把extra, with等特殊文本子项递归处理
        new_data = {}
        for key, value in data.items():
            # Minecraft JSON文本常用嵌套字段
            if key in ('extra', 'with') and isinstance(value, list):
                new_data[key] = [replace_text(v, translations, number, key_prefix) for v in value]
            # hoverEvent.value 也常是数组/字典
            elif key == "hoverEvent" and isinstance(value, dict):
                # hoverEvent.value 可能为dict或list
                if 'value' in value:
                    # 递归处理
                    value_copy = value.copy()
                    value_copy['value'] = replace_text(value['value'], translations, number, key_prefix)
                    new_data[key] = value_copy
                else:
                    new_data[key] = replace_text(value, translations, number, key_prefix)
            elif isinstance(value, (dict, list)):
                new_data[key] = replace_text(value, translations, number, key_prefix)
            else:
                new_data[key] = value

        # 只在本dict存在 "text" 且为字符串时替换
        if "text" in data and isinstance(data["text"], str):
            original_text = data["text"]

            # 查找是否已有相同文本的翻译键
            existing_key = None
            for trans_key, trans_value in translations.items():
                if trans_value == original_text:
                    existing_key = trans_key
                    break

            if existing_key:
                translation_key = existing_key
                if translations[translation_key] != original_text:
                    print(
                        f"更新翻译键 {translation_key}: '{translations[translation_key]}' -> '{original_text}'"
                    )
                    translations[translation_key] = original_text
            else:
                translation_key = f"{key_prefix}.{number[0]}"
                translation_key = format_json_translation_key(translation_key)
                translation_key = format_translation_key(translation_key)
                translations[translation_key] = original_text
                number[0] += 1

            # 替换text字段
            new_data.pop("text", None)
            new_data["translate"] = translation_key
            new_data["fallback"] = original_text

        return new_data

    elif isinstance(data, list):
        return [replace_text(item, translations, number, key_prefix) for item in data]
    else:
        return data


def extract_quoted_text(text, start_pos, quote_char):
    i = start_pos
    result = []

    while i < len(text):
        char = text[i]

        if char == '\\' and i + 1 < len(text):
            next_char = text[i + 1]
            if next_char == 'u' and i + 5 < len(text):
                try:
                    hex_code = text[i+2:i+6]
                    unicode_char = chr(int(hex_code, 16))
                    result.append(unicode_char)
                    i += 6
                except (ValueError, OverflowError):
                    result.append(next_char)
                    i += 2
            elif next_char == quote_char:
                result.append(quote_char)
                i += 2
            elif next_char == '\\':
                result.append('\\')
                i += 2
            elif next_char == 'n':
                result.append('\n')
                i += 2
            elif next_char == 't':
                result.append('\t')
                i += 2
            elif next_char == 'r':
                result.append('\r')
                i += 2
            else:
                result.append(next_char)
                i += 2
        elif char == quote_char:
            return ''.join(result), i
        else:
            result.append(char)
            i += 1

    return None, -1


def escape_for_mcfunction(text, quote_char):
    result = []
    for char in text:
        if should_escape_char(char):
            result.append(f"\\u{ord(char):04x}")
        elif char == quote_char:
            result.append('\\' + quote_char)
        elif char == '\\':
            result.append('\\\\')
        elif char == '\n':
            result.append('\\n')
        elif char == '\t':
            result.append('\\t')
        elif char == '\r':
            result.append('\\r')
        else:
            result.append(char)
    return ''.join(result)


async def localize_mcfunction(directory, translations, output_file_name="zh_cn.json"):
    namespace_counts = {}

    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith(".mcfunction"):
                file_path = os.path.join(root, file)
                print(f"正在处理mcfunction文件: {file_path}")

                relative_path = os.path.relpath(file_path, directory)
                data_position = relative_path.find("data.")
                if data_position != -1:
                    relative_path = relative_path[data_position + len("data.") :]

                namespace_prefix = relative_path.replace(os.path.sep, ".").replace(
                    ".mcfunction", ""
                )
                namespace_prefix = format_translation_key(namespace_prefix)

                if namespace_prefix not in namespace_counts:
                    namespace_counts[namespace_prefix] = 1

                try:
                    with open(file_path, "r", encoding="utf-8") as f:
                        content = f.read()

                    translate_pattern = re.compile(r'translate:\s*([\'"])([^\1]*?)\1')
                    fallback_pattern = re.compile(r'fallback:\s*([\'"])')

                    translate_matches = list(translate_pattern.finditer(content))

                    for translate_match in translate_matches:
                        translation_key = translate_match.group(2)
                        fallback_match = fallback_pattern.search(content, translate_match.end())
                        if fallback_match:
                            quote_char = fallback_match.group(1)
                            fallback_text, _ = extract_quoted_text(content, fallback_match.end(), quote_char)
                            if fallback_text and translation_key in translations:
                                if translations[translation_key] != fallback_text:
                                    print(
                                        f"更新mcfunction翻译键 {translation_key}: '{translations[translation_key]}' -> '{fallback_text}'"
                                    )
                                    translations[translation_key] = fallback_text

                    text_pattern = re.compile(r'text:\s*([\'"])')
                    matches = list(text_pattern.finditer(content))

                    if not matches:
                        continue

                    new_content = content
                    offset = 0

                    for match in matches:
                        quote_char = match.group(1)
                        start_quote_pos = match.end()

                        original_text, end_quote_pos = extract_quoted_text(
                            content, start_quote_pos, quote_char
                        )

                        if original_text is None:
                            continue
                        if "$" in original_text:
                            continue

                        existing_key = None
                        for trans_key, trans_value in translations.items():
                            if trans_value == original_text:
                                existing_key = trans_key
                                break

                        if existing_key:
                            translation_key = existing_key
                            if translations[translation_key] != original_text:
                                print(
                                    f"更新mcfunction翻译键 {translation_key}: '{translations[translation_key]}' -> '{original_text}'"
                                )
                                translations[translation_key] = original_text
                        else:
                            translation_key = f"{namespace_prefix}.{namespace_counts[namespace_prefix]}"
                            translation_key = format_translation_key(translation_key)
                            translations[translation_key] = original_text
                            namespace_counts[namespace_prefix] += 1

                        escaped_text = escape_for_mcfunction(original_text, quote_char)
                        replacement = f"translate: {quote_char}{translation_key}{quote_char}, fallback: {quote_char}{escaped_text}{quote_char}"

                        original_match_start = match.start()
                        original_match_end = end_quote_pos + 1
                        start = original_match_start + offset
                        end = original_match_end + offset
                        new_content = (
                            new_content[:start] + replacement + new_content[end:]
                        )
                        offset += len(replacement) - (original_match_end - original_match_start)

                    with open(file_path, "w", encoding="utf-8") as f:
                        f.write(new_content)

                except Exception as e:
                    print(f"处理mcfunction文件 {file_path} 时出错: {e}")
                    import traceback
                    traceback.print_exc()

    script_dir = os.path.dirname(os.path.abspath(__file__))
    output_file_path = os.path.join(script_dir, output_file_name)

    if translations:
        json_str = json.dumps(translations, ensure_ascii=False, indent=4)
        with open(output_file_path, "w", encoding="utf-8", errors='replace') as out_file:
            out_file.write(json_str)

        print(f"mcfunction翻译结果已保存至: {output_file_path}")
    else:
        print("未找到mcfunction翻译键。")


async def main():
    directory = input("请输入要遍历的目录路径：")
    translations = {}
    number = [1]

    # 读取翻译文件
    script_dir = os.path.dirname(os.path.abspath(__file__))
    zh_cn_file_path = os.path.join(script_dir, "zh_cn.json")

    if os.path.exists(zh_cn_file_path):
        try:
            with open(zh_cn_file_path, "r", encoding="utf-8") as f:
                translations = json.load(f)
            print("已加载现有的翻译文件")
        except Exception as e:
            print(f"加载现有翻译文件时出错: {e}")
            translations = {}
    else:
        print("未找到现有翻译文件，将创建新文件")

    await traverse_and_replace_texts(directory, translations, number)
    await localize_mcfunction(directory, translations)


if __name__ == "__main__":
    if platform.system() == "Emscripten":
        asyncio.ensure_future(main())
    else:
        asyncio.run(main())