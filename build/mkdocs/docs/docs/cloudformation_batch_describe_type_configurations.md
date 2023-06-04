<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_batch_describe_type_configurations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns configuration data for the specified CloudFormation extensions, from the CloudFormation registry for the account and region

### Description

Returns configuration data for the specified CloudFormation extensions,
from the CloudFormation registry for the account and region.

For more information, see [Configuring extensions at the account
level](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/#registry-set-configuration)
in the *CloudFormation User Guide*.

### Usage

    cloudformation_batch_describe_type_configurations(
      TypeConfigurationIdentifiers)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_batch_describe_type_configurations_:_TypeConfigurationIdentifiers">TypeConfigurationIdentifiers</code></td>
<td><p>[required] The list of identifiers for the desired extension
configurations.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Errors = list(
        list(
          ErrorCode = "string",
          ErrorMessage = "string",
          TypeConfigurationIdentifier = list(
            TypeArn = "string",
            TypeConfigurationAlias = "string",
            TypeConfigurationArn = "string",
            Type = "RESOURCE"|"MODULE"|"HOOK",
            TypeName = "string"
          )
        )
      ),
      UnprocessedTypeConfigurations = list(
        list(
          TypeArn = "string",
          TypeConfigurationAlias = "string",
          TypeConfigurationArn = "string",
          Type = "RESOURCE"|"MODULE"|"HOOK",
          TypeName = "string"
        )
      ),
      TypeConfigurations = list(
        list(
          Arn = "string",
          Alias = "string",
          Configuration = "string",
          LastUpdated = as.POSIXct(
            "2015-01-01"
          ),
          TypeArn = "string",
          TypeName = "string",
          IsDefaultConfiguration = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$batch_describe_type_configurations(
      TypeConfigurationIdentifiers = list(
        list(
          TypeArn = "string",
          TypeConfigurationAlias = "string",
          TypeConfigurationArn = "string",
          Type = "RESOURCE"|"MODULE"|"HOOK",
          TypeName = "string"
        )
      )
    )
