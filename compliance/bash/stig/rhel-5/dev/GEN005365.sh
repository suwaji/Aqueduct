#!/bin/bash

##########################################################################
#Aqueduct - Compliance Remediation Content
#Copyright (C) 2011,2012  
#  Vincent C. Passaro (vincent.passaro@gmail.com)
#  Shannon Mitchell (shannon.mitchell@fusiontechnology-llc.com)
#
#This program is free software; you can redistribute it and/or
#modify it under the terms of the GNU General Public License
#as published by the Free Software Foundation; either version 2
#of the License, or (at your option) any later version.
#
#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
#
#You should have received a copy of the GNU General Public License
#along with this program; if not, write to the Free Software
#Foundation, Inc., 51 Franklin Street, Fifth Floor,
#Boston, MA  02110-1301, USA.
##########################################################################

###################### Fotis Networks LLC ###############################
# By Vincent C. Passaro                                                 #
# Fotis Networks LLC	                                                #
# Vincent[.]Passaro[@]fotisnetworks[.]com                               #
# www.fotisnetworks.com	                                                #
###################### Fotis Networks LLC ###############################
#
#  _____________________________________________________________________
# |  Version |   Change Information  |      Author        |    Date    |
# |__________|_______________________|____________________|____________|
# |    1.0   |   Initial Script      | Vincent C. Passaro | 1-Aug-2012 |
# |          |   Creation            |                    |            |
# |__________|_______________________|____________________|____________|
#	                                                                  
   
	
#######################DISA INFORMATION##################################
# Group ID (Vulid): V-22451
# Group Title: GEN005365
# Rule ID: SV-37704r1_rule
# Severity: medium
# Rule Version (STIG-ID): GEN005365
# Rule Title: The snmpd.conf file must be group-owned by root, bin, sys, 
# or system.
#
# Vulnerability Discussion: The snmpd.conf file contains authenticators 
# and must be protected from unauthorized access and modification.  If the 
# file is not group-owned by a system group, it may be subject to access 
# and modification from unauthorized users.
#
# Responsibility: System Administrator
# IAControls: ECLP-1
#
# Check Content:
#
# Check the group ownership of the SNMP configuration file.

# Procedure:
# Examine the default install location /etc/snmp/snmpd.conf
# or:
# find / -name snmpd.conf 

# ls -lL <snmpd.conf>

# If the file is not group-owned by root, bin, sys, or system, this is a 
# finding.


#
# Fix Text: 
#
# Change the group ownership of the SNMP configuration file.

# Procedure:
# chgrp root <snmpd.conf>     
#######################DISA INFORMATION##################################
	
# Global Variables
PDI=GEN005365
	
# Start-Lockdown

