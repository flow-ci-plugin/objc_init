# ************************************************************
#
# those are default envs that you can use them at any step.
#
# ************************************************************

echo '===============DEFAULT ENVS======================='

echo "\$FLOW_PROJECT_NAME = $FLOW_PROJECT_NAME"
echo "\$FLOW_USER_ID = $FLOW_USER_ID"
echo "\$FLOW_PROJECT_ID = $FLOW_PROJECT_ID"
echo "\$FLOW_PROJECT_GIT_URL = $FLOW_PROJECT_GIT_URL"
echo "\$FLOW_PROJECT_LANGUAGE = $FLOW_PROJECT_LANGUAGE"
echo "\$FLOW_GIT_HOST = $FLOW_GIT_HOST"
echo "\$FLOW_JOB_ID = $FLOW_JOB_ID"
echo "\$FLOW_EVENT_ID = $FLOW_EVENT_ID"
echo "\$FLOW_EVENT_NUMBER = $FLOW_EVENT_NUMBER"
echo "\$FLOW_PHP_OLD_VERSION = $FLOW_PHP_OLD_VERSION"

echo '=================================================='
# ************************************************************
#
# those are default envs that you can use them at any step.
#
# ************************************************************
export LANG=en_US.UTF-8

echo '===============DEFAULT ENVS======================='

# 证书秘钥
echo "\$FLOW_IOS_CERTIFICATE_PASS = "

# 证书路径
echo "\$FLOW_IOS_P12_FILE = $FLOW_IOS_P12_FILE"

# provision 路径
echo "\$FLOW_IOS_MOBILEPROVISION_FILE = $FLOW_IOS_MOBILEPROVISION_FILE"

# 证书名称
echo "\$FLOW_IOS_CODE_SIGN_IDENTITY = $FLOW_IOS_CODE_SIGN_IDENTITY"

echo '=================================================='

source $HOME/.rvm/scripts/rvm
rvm use 2.3.1
rvm list

source $HOME/.nvm/nvm.sh
# nvm list

# install xcpretty
# gem install xcpretty

# 证书信息
security find-identity -p codesigning ~/Library/Keychains/app-build.keychain

# update install cocoapods
# gem install cocoapods --pre

# Pods repos
pod repo list

# clean up rvm environment variables
unset rvm_use_flag
unset rvm_ruby_alias
unset rvm_quiet_flag
unset rvm_gemstone_url
unset rvm_docs_type
unset rvm_hook
unset rvm_user_flag
unset rvm_gemstone_package_file
unset rvm_proxy
unset rvm_ruby_global_gems_path
unset rvm_ruby_file
unset rvm_sticky_flag
unset rvm_silent_flag
unset rvm_ruby_make
unset rvm_system_flag
unset rvm_sdk
unset rvm_script_name
unset rvm_ruby_mode
unset rvm_ruby_string
unset rvm_ruby_configure
unset rvm_ruby_url
unset rvm_alias_expanded
unset rvm_wrapper_name
unset rvm_nightly_flag
unset rvm_file_name
unset rvm_ruby_make_install
unset rvm_niceness
unset rvm_delete_flag
unset rvm_ruby_bits
unset rvm_bin_flag
unset rvm_only_path_flag

curl -O -L http://developer.apple.com/certificationauthority/AppleWWDRCA.cer
security import AppleWWDRCA.cer  -k ~/Library/Keychains/app-build.keychain -A

# retry to import p12 and mobileprovisions

# cd $FLOW_CERTS_DIR

# echo "===============start import certs======================="
# curl -o certs_zip.zip $FLOW_CERTS_ZIP_URL

# unzip certs_zip
# unzip certs_zip.zip -d certs_zip
# cd certs_zip

# cover before certs
# if [[ -d "certificate" ]]; then
#  cp -R certificate/* ${FLOW_WORKSPACE}/certificate/
# fi
# if [[ -d "mobileprovision" ]]; then
#  cp -R mobileprovision/* ${FLOW_WORKSPACE}/mobileprovision/
# fi

# for cert in `ls certificate`
# do
#  echo "$(md5 certificate/$cert)"
# done

# for mp in `ls mobileprovision`
# do
#  echo "$(md5 mobileprovision/$mp)"
# done

# run import certs script
# echo "run import scripts"
# sh $FLOW_CERTS_DIR/cert.sh &> /dev/null
# echo "===============finish import certs======================="

