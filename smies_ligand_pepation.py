import subprocess
import argparse

# create the parser object
parser=argparse.ArgumentParser(description="Getting Input and Output Folder")


# add the required argument
input_dir=parser.add_argument("-i","--input_dir",help="Input Folder for the ligprep",required=True)
output_dir=parser.add_argument("-o","--output_dir",help="Output Directory for saving the prepared ligand",required=True)


# parse the arguments
args=parser.parse_args()

# variable assignment for passing the value to the shell script
input_dir = args.input_dir
output_dir = args.output_dir



subprocess.run(["./smies_ligand_preparation.sh", input_dir, output_dir])
