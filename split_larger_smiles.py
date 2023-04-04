import subprocess
import argparse

# create the parser
parser=argparse.ArgumentParser(description="Getting Input and output file name ")

# add argument
parser.add_argument("-i","--input_file",help="Input File name",required=True)
parser.add_argument("-o","--output_dir",help="output directory for saving the splitted files",required=True)
parser.add_argument("-l","--line_number",help="number of lines for each file",required=True)

# parse the arguments
args=parser.parse_args()


input_file = args.input_file
output_dir = args.output_dir
split_size = args.line_number

subprocess.run(["./split_larger_smiles.sh", input_file, output_dir, str(split_size)])
