<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>prometheusservice_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes tags from the specified resource

### Description

Deletes tags from the specified resource.

### Usage

    prometheusservice_untag_resource(resourceArn, tagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="prometheusservice_untag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The ARN of the resource.</p></td>
</tr>
<tr class="even">
<td><code
id="prometheusservice_untag_resource_:_tagKeys">tagKeys</code></td>
<td><p>[required] One or more tag keys</p></td>
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
