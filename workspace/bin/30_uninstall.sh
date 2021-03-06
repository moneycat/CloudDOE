#!/bin/bash
#
# (C) Copyright 2013 The CloudDOE Project and others.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# 
# Contributors:
#      Wei-Chun Chung (wcchung@iis.sinica.edu.tw)
#      Yu-Chun Wang (zxaustin@iis.sinica.edu.tw)
# 
# CloudDOE Project:
#      http://clouddoe.iis.sinica.edu.tw/
#
if [ $# -lt 3 ]; then
	echo "Using:" $0 "{HadoopDir}" "{NodeType: NN/DN} {userPass}"; exit
else
	if [ "$2" != "DN" ] && [ "$2" != "NN" ]; then
		echo  "---- [ERROR 3.0] Unknown Node type ----"; exit
	fi

	echo "---- [3.0] Restore Stage 3 ----";
	./sudo_hack.sh "$3"
	# no need to config again, just delete it (33)
	./32_uninstall_hadoop.sh $1 $2
	# no need to uninstall java now (31)
fi

# vim: ai ts=2 sw=2 et sts=2 ft=sh
