#Create a KMS and export your Master Arn to use for cluster-config
aws kms create-alias --alias-name alias/ekskarpenter --target-key-id $(aws kms create-key --query KeyMetadata.Arn --output text)
  export MASTER_ARN=$(aws kms describe-key --key-id alias/ekskarpenter --query KeyMetadata.Arn --output text)

  echo "export MASTER_ARN=${MASTER_ARN}" | tee -a ~/.bash_profile
  eksctl create cluster -f cluster-config.yaml