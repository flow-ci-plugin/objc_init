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
rvm use 2.3.0
rvm list

source $HOME/.nvm/nvm.sh
# nvm list

# install xcpretty
# gem install xcpretty

# 证书信息
security find-identity -p codesigning ~/Library/Keychains/app-build.keychain

# update install cocoapods
gem install cocoapods --pre

# Pods repos
pod repo list
