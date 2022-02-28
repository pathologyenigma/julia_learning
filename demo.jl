# Create a window called "My First Tool", with a menu bar.
using CImGui
include(joinpath(pathof(CImGui), "..", "..", "examples", "Renderer.jl"))
using .Renderer, CImGui.CSyntax
global my_color = [0.,0.,0.,0.]
global my_values = [0.2, 0.1, 1.0, 0.5, 0.9, 2.2]
# global my_tool_active = true
Renderer.render(width = 360, height = 480, title = "IMGUI Window") do
    @c CImGui.Begin("My First Tool", C_NULL, CImGui.ImGuiWindowFlags_MenuBar)
    if CImGui.BeginMenuBar()
        if CImGui.BeginMenu("File")
            if CImGui.MenuItem("Open..", "Ctrl+O")
            end
            if CImGui.MenuItem("Save", "Ctrl+S")
            end
            if CImGui.MenuItem("Close", "Ctrl+W")
                # my_tool_active = false
            end
            CImGui.EndMenu()
        end
    CImGui.EndMenuBar();
    end
    # Edit a color (stored as ~4 floats)
    CImGui.ColorEdit4("Color", my_color)
    # Plot some values
    
    CImGui.PlotLines("Frame Times", my_values, length(my_values))
    # Display contents in a scrolling region
    CImGui.TextColored([1,1,0,1], "Important Stuff")
    CImGui.BeginChild("Scrolling")
    for n in 0:50
        CImGui.Text("$(n): Some text")
    end
    CImGui.EndChild()
    CImGui.End()
end