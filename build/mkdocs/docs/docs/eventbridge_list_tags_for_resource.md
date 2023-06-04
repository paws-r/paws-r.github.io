<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eventbridge_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Displays the tags associated with an EventBridge resource

### Description

Displays the tags associated with an EventBridge resource. In
EventBridge, rules and event buses can be tagged.

### Usage

    eventbridge_list_tags_for_resource(ResourceARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="eventbridge_list_tags_for_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The ARN of the EventBridge resource for which you want
to view tags.</p></td>
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
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      ResourceARN = "string"
    )
