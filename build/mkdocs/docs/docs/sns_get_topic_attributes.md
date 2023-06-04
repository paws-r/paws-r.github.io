<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_get_topic_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns all of the properties of a topic

### Description

Returns all of the properties of a topic. Topic properties returned
might differ based on the authorization of the user.

### Usage

    sns_get_topic_attributes(TopicArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sns_get_topic_attributes_:_TopicArn">TopicArn</code></td>
<td><p>[required] The ARN of the topic whose properties you want to
get.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Attributes = list(
        "string"
      )
    )

### Request syntax

    svc$get_topic_attributes(
      TopicArn = "string"
    )
