from beet import Context, Function
import math


def beet_default(ctx: Context):
    radius = 2.0 
    center_x = 0  
    center_y = 2
    center_z = 2
    num_points = 60

    angle_step = 2 * math.pi / num_points

    circle_function_lines = []

    for i in range(num_points):

        angle = i * angle_step
        
        offset_y = radius * math.cos(angle)
        offset_x = radius * math.sin(angle)
        
        final_x = center_x + offset_x
        final_y = center_y + offset_y
        final_z = center_z
        
        coord_str = f"^{final_x:.3f} ^{final_y:.3f} ^{final_z:.3f}"
        
        command = f"particle end_rod {coord_str} 0 0 0 0 1 force @a"
        
        circle_function_lines.append(command)

    circle_function_content = "\n".join(circle_function_lines)
    print(circle_function_content)

    ctx.data.functions["test:draw_circle"] = Function(
        circle_function_content
    )