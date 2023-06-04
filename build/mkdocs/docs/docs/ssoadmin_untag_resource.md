<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssoadmin_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates a set of tags from a specified resource

### Description

Disassociates a set of tags from a specified resource.

### Usage

    ssoadmin_untag_resource(InstanceArn, ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssoadmin_untag_resource_:_InstanceArn">InstanceArn</code></td>
<td><p>[required] The ARN of the IAM Identity Center instance under
which the operation will be executed. For more information about ARNs,
see Amazon Resource Names (ARNs) and AWS Service Namespaces in the
<em>AWS General Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssoadmin_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The ARN of the resource with the tags to be
listed.</p></td>
</tr>
<tr class="odd">
<td><code id="ssoadmin_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The keys of tags that are attached to the
resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      InstanceArn = "string",
      ResourceArn = "string",
      TagKeys = list(
        "string"
      )
    )
