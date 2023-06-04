<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_remove_permission</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a statement from a topic's access control policy

### Description

Removes a statement from a topic's access control policy.

To remove the ability to change topic permissions, you must deny
permissions to the `add_permission`, `remove_permission`, and
`set_topic_attributes` actions in your IAM policy.

### Usage

    sns_remove_permission(TopicArn, Label)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sns_remove_permission_:_TopicArn">TopicArn</code></td>
<td><p>[required] The ARN of the topic whose access control policy you
wish to modify.</p></td>
</tr>
<tr class="even">
<td><code id="sns_remove_permission_:_Label">Label</code></td>
<td><p>[required] The unique label of the statement you want to
remove.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_permission(
      TopicArn = "string",
      Label = "string"
    )
