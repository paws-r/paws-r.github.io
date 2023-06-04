<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eventbridge_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes one or more tags from the specified EventBridge resource

### Description

Removes one or more tags from the specified EventBridge resource. In
Amazon EventBridge (CloudWatch Events), rules and event buses can be
tagged.

### Usage

    eventbridge_untag_resource(ResourceARN, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="eventbridge_untag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The ARN of the EventBridge resource from which you are
removing tags.</p></td>
</tr>
<tr class="even">
<td><code id="eventbridge_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The list of tag keys to remove from the
resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      ResourceARN = "string",
      TagKeys = list(
        "string"
      )
    )
