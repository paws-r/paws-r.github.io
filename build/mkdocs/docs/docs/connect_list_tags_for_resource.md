<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the tags for the specified resource

### Description

Lists the tags for the specified resource.

For sample policies that use tags, see [Amazon Connect Identity-Based
Policy
Examples](https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_id-based-policy-examples.html)
in the *Amazon Connect Administrator Guide*.

### Usage

    connect_list_tags_for_resource(resourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_list_tags_for_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource. All
Amazon Connect resources (instances, queues, flows, routing profiles,
etc) have an ARN. To locate the ARN for an instance, for example, see <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">Find
your Amazon Connect instance ID/ARN</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      tags = list(
        "string"
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      resourceArn = "string"
    )
