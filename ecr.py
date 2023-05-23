import boto3
client = boto3.client('ecr')

response = client.create_repository(
    registryId='590468866765',
    repositoryName='my-cloud-native-repo',
    tags=[
        {
            'Key': 'Name',
            'Value': 'My-App'
        },
    ],
    imageTagMutability='MUTABLE',
    imageScanningConfiguration={
        'scanOnPush': True
    },
    encryptionConfiguration={
        'encryptionType': 'KMS',
        # 'kmsKey': 'string'
    }
)
responseuri=response['repository']['repositoryUri']
print(responseuri)