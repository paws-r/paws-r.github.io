<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_create_infrastructure_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new infrastructure configuration

### Description

Creates a new infrastructure configuration. An infrastructure
configuration defines the environment in which your image will be built
and tested.

### Usage

    imagebuilder_create_infrastructure_configuration(name, description,
      instanceTypes, instanceProfileName, securityGroupIds, subnetId, logging,
      keyPair, terminateInstanceOnFailure, snsTopicArn, resourceTags,
      instanceMetadataOptions, tags, clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="imagebuilder_create_infrastructure_configuration_:_name">name</code></td>
<td><p>[required] The name of the infrastructure configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_create_infrastructure_configuration_:_description">description</code></td>
<td><p>The description of the infrastructure configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_create_infrastructure_configuration_:_instanceTypes">instanceTypes</code></td>
<td><p>The instance types of the infrastructure configuration. You can
specify one or more instance types to use for this build. The service
will pick one of these instance types based on availability.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_create_infrastructure_configuration_:_instanceProfileName">instanceProfileName</code></td>
<td><p>[required] The instance profile to associate with the instance
used to customize your Amazon EC2 AMI.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_create_infrastructure_configuration_:_securityGroupIds">securityGroupIds</code></td>
<td><p>The security group IDs to associate with the instance used to
customize your Amazon EC2 AMI.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_create_infrastructure_configuration_:_subnetId">subnetId</code></td>
<td><p>The subnet ID in which to place the instance used to customize
your Amazon EC2 AMI.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_create_infrastructure_configuration_:_logging">logging</code></td>
<td><p>The logging configuration of the infrastructure
configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_create_infrastructure_configuration_:_keyPair">keyPair</code></td>
<td><p>The key pair of the infrastructure configuration. You can use
this to log on to and debug the instance used to create your
image.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_create_infrastructure_configuration_:_terminateInstanceOnFailure">terminateInstanceOnFailure</code></td>
<td><p>The terminate instance on failure setting of the infrastructure
configuration. Set to false if you want Image Builder to retain the
instance used to configure your AMI if the build or test phase of your
workflow fails.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_create_infrastructure_configuration_:_snsTopicArn">snsTopicArn</code></td>
<td><p>The Amazon Resource Name (ARN) for the SNS topic to which we send
image build event notifications.</p>
<p>EC2 Image Builder is unable to send notifications to SNS topics that
are encrypted using keys from other accounts. The key that is used to
encrypt the SNS topic must reside in the account that the Image Builder
service runs under.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_create_infrastructure_configuration_:_resourceTags">resourceTags</code></td>
<td><p>The tags attached to the resource created by Image
Builder.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_create_infrastructure_configuration_:_instanceMetadataOptions">instanceMetadataOptions</code></td>
<td><p>The instance metadata options that you can set for the HTTP
requests that pipeline builds use to launch EC2 build and test
instances.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_create_infrastructure_configuration_:_tags">tags</code></td>
<td><p>The tags of the infrastructure configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_create_infrastructure_configuration_:_clientToken">clientToken</code></td>
<td><p>[required] The idempotency token used to make this request
idempotent.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
      clientToken = "string",
      infrastructureConfigurationArn = "string"
    )

### Request syntax

    svc$create_infrastructure_configuration(
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
      resourceTags = list(
        "string"
      ),
      instanceMetadataOptions = list(
        httpTokens = "string",
        httpPutResponseHopLimit = 123
      ),
      tags = list(
        "string"
      ),
      clientToken = "string"
    )
