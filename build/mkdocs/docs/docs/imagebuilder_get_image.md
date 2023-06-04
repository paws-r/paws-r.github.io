<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_get_image</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets an image

### Description

Gets an image.

### Usage

    imagebuilder_get_image(imageBuildVersionArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="imagebuilder_get_image_:_imageBuildVersionArn">imageBuildVersionArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the image that you
want to get.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
      image = list(
        arn = "string",
        type = "AMI"|"DOCKER",
        name = "string",
        version = "string",
        platform = "Windows"|"Linux",
        enhancedImageMetadataEnabled = TRUE|FALSE,
        osVersion = "string",
        state = list(
          status = "PENDING"|"CREATING"|"BUILDING"|"TESTING"|"DISTRIBUTING"|"INTEGRATING"|"AVAILABLE"|"CANCELLED"|"FAILED"|"DEPRECATED"|"DELETED",
          reason = "string"
        ),
        imageRecipe = list(
          arn = "string",
          type = "AMI"|"DOCKER",
          name = "string",
          description = "string",
          platform = "Windows"|"Linux",
          owner = "string",
          version = "string",
          components = list(
            list(
              componentArn = "string",
              parameters = list(
                list(
                  name = "string",
                  value = list(
                    "string"
                  )
                )
              )
            )
          ),
          parentImage = "string",
          blockDeviceMappings = list(
            list(
              deviceName = "string",
              ebs = list(
                encrypted = TRUE|FALSE,
                deleteOnTermination = TRUE|FALSE,
                iops = 123,
                kmsKeyId = "string",
                snapshotId = "string",
                volumeSize = 123,
                volumeType = "standard"|"io1"|"io2"|"gp2"|"gp3"|"sc1"|"st1",
                throughput = 123
              ),
              virtualName = "string",
              noDevice = "string"
            )
          ),
          dateCreated = "string",
          tags = list(
            "string"
          ),
          workingDirectory = "string",
          additionalInstanceConfiguration = list(
            systemsManagerAgent = list(
              uninstallAfterBuild = TRUE|FALSE
            ),
            userDataOverride = "string"
          )
        ),
        containerRecipe = list(
          arn = "string",
          containerType = "DOCKER",
          name = "string",
          description = "string",
          platform = "Windows"|"Linux",
          owner = "string",
          version = "string",
          components = list(
            list(
              componentArn = "string",
              parameters = list(
                list(
                  name = "string",
                  value = list(
                    "string"
                  )
                )
              )
            )
          ),
          instanceConfiguration = list(
            image = "string",
            blockDeviceMappings = list(
              list(
                deviceName = "string",
                ebs = list(
                  encrypted = TRUE|FALSE,
                  deleteOnTermination = TRUE|FALSE,
                  iops = 123,
                  kmsKeyId = "string",
                  snapshotId = "string",
                  volumeSize = 123,
                  volumeType = "standard"|"io1"|"io2"|"gp2"|"gp3"|"sc1"|"st1",
                  throughput = 123
                ),
                virtualName = "string",
                noDevice = "string"
              )
            )
          ),
          dockerfileTemplateData = "string",
          kmsKeyId = "string",
          encrypted = TRUE|FALSE,
          parentImage = "string",
          dateCreated = "string",
          tags = list(
            "string"
          ),
          workingDirectory = "string",
          targetRepository = list(
            service = "ECR",
            repositoryName = "string"
          )
        ),
        sourcePipelineName = "string",
        sourcePipelineArn = "string",
        infrastructureConfiguration = list(
          arn = "string",
          name = "string",
          description = "string",
          instanceTypes = list(
            "string"
          ),
          instanceProfileName = "string",
          securityGroupIds = list(
            "string"
          ),
          subnetId = "string",
          logging = list(
            s3Logs = list(
              s3BucketName = "string",
              s3KeyPrefix = "string"
            )
          ),
          keyPair = "string",
          terminateInstanceOnFailure = TRUE|FALSE,
          snsTopicArn = "string",
          dateCreated = "string",
          dateUpdated = "string",
          resourceTags = list(
            "string"
          ),
          instanceMetadataOptions = list(
            httpTokens = "string",
            httpPutResponseHopLimit = 123
          ),
          tags = list(
            "string"
          )
        ),
        distributionConfiguration = list(
          arn = "string",
          name = "string",
          description = "string",
          distributions = list(
            list(
              region = "string",
              amiDistributionConfiguration = list(
                name = "string",
                description = "string",
                targetAccountIds = list(
                  "string"
                ),
                amiTags = list(
                  "string"
                ),
                kmsKeyId = "string",
                launchPermission = list(
                  userIds = list(
                    "string"
                  ),
                  userGroups = list(
                    "string"
                  ),
                  organizationArns = list(
                    "string"
                  ),
                  organizationalUnitArns = list(
                    "string"
                  )
                )
              ),
              containerDistributionConfiguration = list(
                description = "string",
                containerTags = list(
                  "string"
                ),
                targetRepository = list(
                  service = "ECR",
                  repositoryName = "string"
                )
              ),
              licenseConfigurationArns = list(
                "string"
              ),
              launchTemplateConfigurations = list(
                list(
                  launchTemplateId = "string",
                  accountId = "string",
                  setDefaultVersion = TRUE|FALSE
                )
              ),
              s3ExportConfiguration = list(
                roleName = "string",
                diskImageFormat = "VMDK"|"RAW"|"VHD",
                s3Bucket = "string",
                s3Prefix = "string"
              ),
              fastLaunchConfigurations = list(
                list(
                  enabled = TRUE|FALSE,
                  snapshotConfiguration = list(
                    targetResourceCount = 123
                  ),
                  maxParallelLaunches = 123,
                  launchTemplate = list(
                    launchTemplateId = "string",
                    launchTemplateName = "string",
                    launchTemplateVersion = "string"
                  ),
                  accountId = "string"
                )
              )
            )
          ),
          timeoutMinutes = 123,
          dateCreated = "string",
          dateUpdated = "string",
          tags = list(
            "string"
          )
        ),
        imageTestsConfiguration = list(
          imageTestsEnabled = TRUE|FALSE,
          timeoutMinutes = 123
        ),
        dateCreated = "string",
        outputResources = list(
          amis = list(
            list(
              region = "string",
              image = "string",
              name = "string",
              description = "string",
              state = list(
                status = "PENDING"|"CREATING"|"BUILDING"|"TESTING"|"DISTRIBUTING"|"INTEGRATING"|"AVAILABLE"|"CANCELLED"|"FAILED"|"DEPRECATED"|"DELETED",
                reason = "string"
              ),
              accountId = "string"
            )
          ),
          containers = list(
            list(
              region = "string",
              imageUris = list(
                "string"
              )
            )
          )
        ),
        tags = list(
          "string"
        ),
        buildType = "USER_INITIATED"|"SCHEDULED"|"IMPORT",
        imageSource = "AMAZON_MANAGED"|"AWS_MARKETPLACE"|"IMPORTED"|"CUSTOM",
        scanState = list(
          status = "PENDING"|"SCANNING"|"COLLECTING"|"COMPLETED"|"ABANDONED"|"FAILED"|"TIMED_OUT",
          reason = "string"
        ),
        imageScanningConfiguration = list(
          imageScanningEnabled = TRUE|FALSE,
          ecrConfiguration = list(
            repositoryName = "string",
            containerTags = list(
              "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$get_image(
      imageBuildVersionArn = "string"
    )
