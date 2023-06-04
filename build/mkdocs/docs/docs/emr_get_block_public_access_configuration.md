<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_get_block_public_access_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the Amazon EMR block public access configuration for your Amazon Web Services account in the current Region

### Description

Returns the Amazon EMR block public access configuration for your Amazon
Web Services account in the current Region. For more information see
[Configure Block Public Access for Amazon
EMR](https://docs.aws.amazon.com/emr/latest/ManagementGuide/) in the
*Amazon EMR Management Guide*.

### Usage

    emr_get_block_public_access_configuration()

### Value

A list with the following syntax:

    list(
      BlockPublicAccessConfiguration = list(
        BlockPublicSecurityGroupRules = TRUE|FALSE,
        PermittedPublicSecurityGroupRuleRanges = list(
          list(
            MinRange = 123,
            MaxRange = 123
          )
        )
      ),
      BlockPublicAccessConfigurationMetadata = list(
        CreationDateTime = as.POSIXct(
          "2015-01-01"
        ),
        CreatedByArn = "string"
      )
    )

### Request syntax

    svc$get_block_public_access_configuration()
