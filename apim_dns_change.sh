#!/bin/bash

sed -i 's/apicrt/rapid-staging/g' /opt/WSO2/apim/repository/conf/security/authenticators.xml
sed -i 's/apicrt/rapid-staging/g' /opt/WSO2/apim/repository/conf/api-manager.xml
sed -i 's/apicrt/rapid-staging/g' /opt/WSO2/apim/repository/deployment/server/jaggeryapps/publisher/site/themes/CernerPublisherV.2.1/templates/page/base/template.jag
sed -i 's/apicrt/rapid-staging/g' /opt/WSO2/apim/repository/deployment/server/jaggeryapps/publisher/site/conf/site.json
sed -i 's/apicrt/rapid-staging/g' /opt/WSO2/apim/repository/deployment/server/jaggeryapps/store/site/themes/CernerThemeV2.1/templates/menu/header/template.jag
sed -i 's/apicrt/rapid-staging/g' /opt/WSO2/apim/repository/deployment/server/jaggeryapps/store/site/conf/site.json.bak
sed -i 's/apicrt/rapid-staging/g' /opt/WSO2/apim/repository/deployment/server/jaggeryapps/store/site/conf/site.json
sed -i 's/apicrt/rapid-staging/g' /opt/WSO2/apim/repository/deployment/server/jaggeryapps/admin/site/conf/site.json
sed -i 's/apicrt/rapid-staging/g' /opt/WSO2/apim/repository/deployment/server/jaggeryapps/portal/configs/designer.json
sed -i 's/apicrt/rapid-staging/g' /opt/WSO2/apim/repository/conf/carbon.xml

echo -e "\e[33m * * * *  Conf Directory  * * * * \e[39m"

echo -e "\e[31m*** Nothing should appear below***\e[39m"

grep -nr "apicrt" /opt/WSO2/apim/repository/conf/

echo -e "\e[32m*** New DNS name below ***\e[39m"

grep -nr "rapid-staging" /opt/WSO2/apim/repository/conf/

echo -e "\e[33m * * * *  Server Directory  * * * * \e[39m"

echo -e "\e[31m*** Nothing should appear below***\e[39m"

grep -nr "apicrt" /opt/WSO2/apim/repository/deployment/server/jaggeryapps/

echo -e "\e[32m*** New DNS name below ***\e[39m"

grep -nr "rapid-staging" /opt/WSO2/apim/repository/deployment/server/jaggeryapps/
