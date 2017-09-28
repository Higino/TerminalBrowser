# TerminalBrowser
Bash script to export HTML end points to file

# Usage
run.sh [File]

File - Is the file name containing one endpoit per line. Valid endpoints are all endpoints that can be accessible via http get and in the format httl://domain_to_access/[context_in_the_domain]

#Output
The result of each HTTP get will be written to a file stored in "./output". The output file format will be in the form [domain_to_access].[context_in_the_domain]. Example: www.farfetch.com/men will be written to www_farfetch_com.men