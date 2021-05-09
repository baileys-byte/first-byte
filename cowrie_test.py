#THIS PROGRAM MAKES CHANGES TO THE COWRIE CONFIG FILE

#Inputs: Configuration options (A, B, C, D)
#Outputs: config.cfg and honeyfs/etc/motd
#Call the command 
# Choose an option
#      IF option = A, B or C Then
#          Check for config.cfg
#           IF config.cfg exists Then 
#               Clear contents of config.cfg 
#           Else
#                Create config.cfg
#           ADD configuration settings
#         LOCATE and EDIT banner file
#     IF option = D Then
#         Check for config.cfg
#         IF config.cfg exists Then 
#               Clear contents of config.cfg 
#         Else
#               Create config.cfg
#  End