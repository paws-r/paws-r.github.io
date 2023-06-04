<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>drs_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or overwrites only the specified tags for the specified Elastic Disaster Recovery resource or resources

### Description

Adds or overwrites only the specified tags for the specified Elastic
Disaster Recovery resource or resources. When you specify an existing
tag key, the value is overwritten with the new value. Each resource can
have a maximum of 50 tags. Each tag consists of a key and optional
value.

### Usage

    drs_tag_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="drs_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] ARN of the resource for which tags are to be added or
updated.</p></td>
</tr>
<tr class="even">
<td><code id="drs_tag_resource_:_tags">tags</code></td>
<td><p>[required] Array of tags to be added or updated.</p></td>
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
