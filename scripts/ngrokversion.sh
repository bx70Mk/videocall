import subprocess

def get_ngrok_version():
    try:
        # Run the ngrok version command and capture the output
        output = subprocess.check_output(["ngrok", "version"], stderr=subprocess.STDOUT, universal_newlines=True)
        # Split the output by newline and extract the version line
        version_line = output.strip().split("\n")[-1]
        # Extract the version number from the version line
        version_number = version_line.split(" ")[-1]
        return version_number
    except subprocess.CalledProcessError:
        return "Error: ngrok command not found"

# Call the function to get the ngrok version
ngrok_version = get_ngrok_version()
print("Ngrok Version:", ngrok_version)
