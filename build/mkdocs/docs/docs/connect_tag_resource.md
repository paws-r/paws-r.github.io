<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds the specified tags to the specified resource

### Description

Adds the specified tags to the specified resource.

Some of the supported resource types are agents, routing profiles,
queues, quick connects, contact flows, agent statuses, hours of
operation, phone numbers, security profiles, and task templates. For a
complete list, see [Tagging resources in Amazon
Connect](https://docs.aws.amazon.com/connect/latest/adminguide/tagging.html).

For sample policies that use tags, see [Amazon Connect Identity-Based
Policy
Examples](https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_id-based-policy-examples.html)
in the *Amazon Connect Administrator Guide*.

### Usage

    connect_tag_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
resource.</p></td>
</tr>
<tr class="even">
<td><code id="connect_tag_resource_:_tags">tags</code></td>
<td><p>[required] The tags used to organize, track, or control access
for this resource. For example, { "tags": {"key1":"value1",
"key2":"value2"} }.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      resourceArn = "string",
      tags = list(
        "string"
      )
    )
