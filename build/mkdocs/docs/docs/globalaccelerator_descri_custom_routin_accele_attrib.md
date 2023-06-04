<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_describe_custom_routing_accelerator_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describe the attributes of a custom routing accelerator

### Description

Describe the attributes of a custom routing accelerator.

### Usage

    globalaccelerator_describe_custom_routing_accelerator_attributes(
      AcceleratorArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="globalaccelerator_describe_custom_routing_accelerator_attributes_:_AcceleratorArn">AcceleratorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the custom routing
accelerator to describe the attributes for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AcceleratorAttributes = list(
        FlowLogsEnabled = TRUE|FALSE,
        FlowLogsS3Bucket = "string",
        FlowLogsS3Prefix = "string"
      )
    )

### Request syntax

    svc$describe_custom_routing_accelerator_attributes(
      AcceleratorArn = "string"
    )
