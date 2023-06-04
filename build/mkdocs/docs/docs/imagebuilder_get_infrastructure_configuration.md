<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_get_infrastructure_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets an infrastructure configuration

### Description

Gets an infrastructure configuration.

### Usage

    imagebuilder_get_infrastructure_configuration(
      infrastructureConfigurationArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="imagebuilder_get_infrastructure_configuration_:_infrastructureConfigurationArn">infrastructureConfigurationArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the infrastructure
configuration that you want to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
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
      )
    )

### Request syntax

    svc$get_infrastructure_configuration(
      infrastructureConfigurationArn = "string"
    )
