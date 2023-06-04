<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_delete_distribution_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a distribution configuration

### Description

Deletes a distribution configuration.

### Usage

    imagebuilder_delete_distribution_configuration(
      distributionConfigurationArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="imagebuilder_delete_distribution_configuration_:_distributionConfigurationArn">distributionConfigurationArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the distribution
configuration to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
      distributionConfigurationArn = "string"
    )

### Request syntax

    svc$delete_distribution_configuration(
      distributionConfigurationArn = "string"
    )
