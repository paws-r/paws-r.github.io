<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssoadmin_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the tags that are attached to a specified resource

### Description

Lists the tags that are attached to a specified resource.

### Usage

    ssoadmin_list_tags_for_resource(InstanceArn, ResourceArn, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssoadmin_list_tags_for_resource_:_InstanceArn">InstanceArn</code></td>
<td><p>[required] The ARN of the IAM Identity Center instance under
which the operation will be executed. For more information about ARNs,
see Amazon Resource Names (ARNs) and AWS Service Namespaces in the
<em>AWS General Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssoadmin_list_tags_for_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The ARN of the resource with the tags to be
listed.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssoadmin_list_tags_for_resource_:_NextToken">NextToken</code></td>
<td><p>The pagination token for the list API. Initially the value is
null. Use the output of previous API calls to make subsequent
calls.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_tags_for_resource(
      InstanceArn = "string",
      ResourceArn = "string",
      NextToken = "string"
    )
