<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>timestreamwrite_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a set of tags with a Timestream resource

### Description

Associates a set of tags with a Timestream resource. You can then
activate these user-defined tags so that they appear on the Billing and
Cost Management console for cost allocation tracking.

### Usage

    timestreamwrite_tag_resource(ResourceARN, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="timestreamwrite_tag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] Identifies the Timestream resource to which tags
should be added. This value is an Amazon Resource Name (ARN).</p></td>
</tr>
<tr class="even">
<td><code id="timestreamwrite_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] The tags to be assigned to the Timestream
resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceARN = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
