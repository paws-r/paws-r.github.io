<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sfn_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Remove a tag from a Step Functions resource

### Description

Remove a tag from a Step Functions resource

### Usage

    sfn_untag_resource(resourceArn, tagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sfn_untag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for the Step Functions
state machine or activity.</p></td>
</tr>
<tr class="even">
<td><code id="sfn_untag_resource_:_tagKeys">tagKeys</code></td>
<td><p>[required] The list of tags to remove from the resource.</p></td>
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
