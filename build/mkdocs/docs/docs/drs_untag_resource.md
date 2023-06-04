<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>drs_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified set of tags from the specified set of Elastic Disaster Recovery resources

### Description

Deletes the specified set of tags from the specified set of Elastic
Disaster Recovery resources.

### Usage

    drs_untag_resource(resourceArn, tagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="drs_untag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] ARN of the resource for which tags are to be
removed.</p></td>
</tr>
<tr class="even">
<td><code id="drs_untag_resource_:_tagKeys">tagKeys</code></td>
<td><p>[required] Array of tags to be removed.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      resourceArn = "string",
      tagKeys = list(
        "string"
      )
    )
