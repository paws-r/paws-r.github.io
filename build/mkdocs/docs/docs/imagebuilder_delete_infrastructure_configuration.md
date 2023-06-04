<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_delete_infrastructure_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an infrastructure configuration

### Description

Deletes an infrastructure configuration.

### Usage

    imagebuilder_delete_infrastructure_configuration(
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
id="imagebuilder_delete_infrastructure_configuration_:_infrastructureConfigurationArn">infrastructureConfigurationArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the infrastructure
configuration to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
      infrastructureConfigurationArn = "string"
    )

### Request syntax

    svc$delete_infrastructure_configuration(
      infrastructureConfigurationArn = "string"
    )
