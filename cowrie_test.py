#THIS PROGRAM MAKES CHANGES TO THE COWRIE CONFIG FILE

#Inputs: Configuration options (A, B, C, D)
#Outputs: config.ctg and honeyfs/etc/motd
#Call the command 
# Choose an option
#      IF option = A, B or C Then
#          Check for config.ctg
#           IF config.ctg exists Then 
#               Clear contents of config.ctg 
#           Else
#                Create config.ctg
#           ADD configuration settings
#         LOCATE and EDIT banner file
#     IF option = D Then
#         Check for config.ctg
#         IF config.ctg exists Then 
#               Clear contents of config.ctg 
#         Else
#               Create config.ctg
#  End