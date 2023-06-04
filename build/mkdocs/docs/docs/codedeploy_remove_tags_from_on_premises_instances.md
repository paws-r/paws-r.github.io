<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_remove_tags_from_on_premises_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes one or more tags from one or more on-premises instances

### Description

Removes one or more tags from one or more on-premises instances.

### Usage

    codedeploy_remove_tags_from_on_premises_instances(tags, instanceNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_remove_tags_from_on_premises_instances_:_tags">tags</code></td>
<td><p>[required] The tag key-value pairs to remove from the on-premises
instances.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_remove_tags_from_on_premises_instances_:_instanceNames">instanceNames</code></td>
<td><p>[required] The names of the on-premises instances from which to
remove tags.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_tags_from_on_premises_instances(
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
