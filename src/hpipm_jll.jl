# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule hpipm_jll
using Base
using Base: UUID
using LazyArtifacts
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("hpipm")
JLLWrappers.@generate_main_file("hpipm", Base.UUID("cd4cb499-eb35-5070-a3c3-a74c88142326"))
end  # module hpipm_jll
