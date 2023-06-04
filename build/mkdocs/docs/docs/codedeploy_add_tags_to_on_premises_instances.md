<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_add_tags_to_on_premises_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds tags to on-premises instances

### Description

Adds tags to on-premises instances.

### Usage

    codedeploy_add_tags_to_on_premises_instances(tags, instanceNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_add_tags_to_on_premises_instances_:_tags">tags</code></td>
<td><p>[required] The tag key-value pairs to add to the on-premises
instances.</p>
<p>Keys and values are both required. Keys cannot be null or empty
strings. Value-only tags are not allowed.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_add_tags_to_on_premises_instances_:_instanceNames">instanceNames</code></td>
<td><p>[required] The names of the on-premises instances to which to add
tags.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$add_tags_to_on_premises_instances(
      tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      instanceNames = list(
        "string"
      )
    )
