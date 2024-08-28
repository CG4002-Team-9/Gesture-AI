import finn.builder.build_dataflow as build
import finn.builder.build_dataflow_config as build_cfg
import os
import shutil
from qonnx.core.modelwrapper import ModelWrapper
# custom steps
# from custom_steps import step_pre_streamline, step_convert_final_layers


# Define model directory and files
model_dir = "./model_dir/"  # Adjust this path if needed
model_file = model_dir + "gesture-verification.onnx"  # Your ONNX model file

# Output directories
estimates_output_dir = "output_estimates_only"
rtlsim_output_dir = "output_ipstitch_ooc_rtlsim"
final_output_dir = "output_final"

# Remove previous output directories if they exist
def clean_previous_runs(output_dirs):
    for output_dir in output_dirs:
        if os.path.exists(output_dir):
            shutil.rmtree(output_dir)
            print(f"Previous run results in {output_dir} deleted!")

clean_previous_runs([estimates_output_dir, rtlsim_output_dir, final_output_dir])


#print both configs for steps
# print("Estimate Only Build Configuration:")
# print(build_cfg.estimate_only_dataflow_steps)
# print("\nStitched IP, OOC Synth, and RTLSim Performance Configuration:")
# print(build_cfg.default_build_dataflow_steps)

# def select_build_steps(type):
#     if type == "estimate":
#         return ['step_qonnx_to_finn',
#                 'step_tidy_up',
#                 step_pre_streamline,
#                 'step_streamline',
#                 'step_convert_to_hw',
#                 step_convert_final_layers,
#                 'step_create_dataflow_partition',
#                 'step_specialize_layers',
#                 'step_target_fps_parallelization',
#                 'step_apply_folding_config',
#                 'step_minimize_bit_width',
#                 'step_generate_estimate_reports']
#     else:
#         return ['step_qonnx_to_finn',
#                 'step_tidy_up',
#                 step_pre_streamline,
#                 'step_streamline',
#                 'step_convert_to_hw',
#                 step_convert_final_layers,
#                 'step_create_dataflow_partition',
#                 'step_specialize_layers',
#                 'step_target_fps_parallelization',
#                 'step_apply_folding_config',
#                 'step_minimize_bit_width',
#                 'step_generate_estimate_reports',
#                 'step_hw_codegen',
#                 'step_hw_ipgen',
#                 'step_set_fifo_depths',
#                 'step_create_stitched_ip',
#                 'step_measure_rtlsim_performance',
#                 'step_out_of_context_synthesis',
#                 'step_synthesize_bitfile',
#                 'step_make_pynq_driver',
#                 'step_deployment_package']

# Step 1: Estimate Only Build Configuration
cfg_estimates = build.DataflowBuildConfig(
    output_dir=estimates_output_dir,
    mvau_wwidth_max=24,
    target_fps=1000000,
    synth_clk_period_ns=10.0,
    fpga_part="xczu3eg-sbva484-2-i",
    steps=build_cfg.estimate_only_dataflow_steps,
    generate_outputs=[
        build_cfg.DataflowOutputType.ESTIMATE_REPORTS,
    ]
)

# Execute the estimate only build
print("Starting estimate only build...")
build.build_dataflow_cfg(model_file, cfg_estimates)
print("Estimate only build completed.")

# Step 2: Stitched IP, OOC Synth, and RTLSim Performance
cfg_stitched_ip = build.DataflowBuildConfig(
    output_dir=rtlsim_output_dir,
    mvau_wwidth_max=24,
    target_fps=1000000,
    synth_clk_period_ns=10.0,
    fpga_part="xczu3eg-sbva484-2-i",
    steps=build_cfg.default_build_dataflow_steps,
    generate_outputs=[
        build_cfg.DataflowOutputType.STITCHED_IP,
        build_cfg.DataflowOutputType.RTLSIM_PERFORMANCE,
        build_cfg.DataflowOutputType.OOC_SYNTH,
    ]
)

# Execute the stitched IP build
print("Starting stitched IP, OOC Synth, and RTLSim build...")
build.build_dataflow_cfg(model_file, cfg_stitched_ip)
print("Stitched IP, OOC Synth, and RTLSim build completed.")

# Optional: Step 3: Build PYNQ Bitfile and Driver
cfg_final = build.DataflowBuildConfig(
    output_dir=final_output_dir,
    mvau_wwidth_max=24,
    target_fps=1000000,
    synth_clk_period_ns=10.0,
    board="Pynq-Z1",
    shell_flow_type=build_cfg.ShellFlowType.VIVADO_ZYNQ,
    steps=build_cfg.default_build_dataflow_steps,
    generate_outputs=[
        build_cfg.DataflowOutputType.BITFILE,
        build_cfg.DataflowOutputType.PYNQ_DRIVER,
        build_cfg.DataflowOutputType.DEPLOYMENT_PACKAGE,
    ]
)

# Execute the final build (Optional: takes more time)
# Uncomment the following lines if you want to generate the bitfile and driver
# print("Starting final build with bitfile and PYNQ driver...")
# build.build_dataflow_cfg(model_file, cfg_final)
# print("Final build with bitfile and PYNQ driver completed.")
