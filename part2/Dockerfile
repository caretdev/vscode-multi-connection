FROM store/intersystems/iris-community:2019.3.0.309.0

COPY Installer.cls /tmp/part2/
COPY src /tmp/part2/src/

RUN iris start ${ISC_PACKAGE_INSTANCENAME} \
 && /bin/echo -e "" \
    "Do ##class(Security.Users).UnExpireUserPasswords(\"*\")\n" \
    "Do \$system.OBJ.Load(\"/tmp/part2/Installer.cls\", \"ck\")\n" \
    "Do ##class(Part2.Installer).setup(\"USER\", \"/tmp/part2/src/\")\n" \
    "Halt" \
  | iris session ${ISC_PACKAGE_INSTANCENAME} -U %SYS \
 && iris stop ${ISC_PACKAGE_INSTANCENAME} quietly \