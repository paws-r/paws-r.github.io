<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_describe_accelerator_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describe the attributes of an accelerator

### Description

Describe the attributes of an accelerator.

### Usage

    globalaccelerator_describe_accelerator_attributes(AcceleratorArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="globalaccelerator_describe_accelerator_attributes_:_AcceleratorArn">AcceleratorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the accelerator with
the attributes that you want to describe.</p></td>
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

    svc$describe_accelerator_attributes(
      AcceleratorArn = "string"
    )
