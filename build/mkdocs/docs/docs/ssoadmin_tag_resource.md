<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssoadmin_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a set of tags with a specified resource

### Description

Associates a set of tags with a specified resource.

### Usage

    ssoadmin_tag_resource(InstanceArn, ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssoadmin_tag_resource_:_InstanceArn">InstanceArn</code></td>
<td><p>[required] The ARN of the IAM Identity Center instance under
which the operation will be executed. For more information about ARNs,
see Amazon Resource Names (ARNs) and AWS Service Namespaces in the
<em>AWS General Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssoadmin_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The ARN of the resource with the tags to be
listed.</p></td>
</tr>
<tr class="odd">
<td><code id="ssoadmin_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] A set of key-value pairs that are used to manage the
resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      InstanceArn = "string",
      ResourceArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
