import argparse
import subprocess

parser = argparse.ArgumentParser(description='Convert MAEGZ files to SMI format')
parser.add_argument('input_dir', help='input directory containing MAEGZ files')
parser.add_argument('output_dir', help='output directory to store SMI files')
args = parser.parse_args()

# run the shell script with input and output directories as arguments
subprocess.run(['bash', 'convert_mae_to_smi.sh', args.input_dir, args.output_dir])

