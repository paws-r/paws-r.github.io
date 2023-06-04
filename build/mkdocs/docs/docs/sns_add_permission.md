<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_add_permission</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a statement to a topic's access control policy, granting access for the specified Amazon Web Services accounts to the specified actions

### Description

Adds a statement to a topic's access control policy, granting access for
the specified Amazon Web Services accounts to the specified actions.

To remove the ability to change topic permissions, you must deny
permissions to the `add_permission`, `remove_permission`, and
`set_topic_attributes` actions in your IAM policy.

### Usage

    sns_add_permission(TopicArn, Label, AWSAccountId, ActionName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sns_add_permission_:_TopicArn">TopicArn</code></td>
<td><p>[required] The ARN of the topic whose access control policy you
wish to modify.</p></td>
</tr>
<tr class="even">
<td><code id="sns_add_permission_:_Label">Label</code></td>
<td><p>[required] A unique identifier for the new policy
statement.</p></td>
</tr>
<tr class="odd">
<td><code
id="sns_add_permission_:_AWSAccountId">AWSAccountId</code></td>
<td><p>[required] The Amazon Web Services account IDs of the users
(principals) who will be given access to the specified actions. The
users must have Amazon Web Services account, but do not need to be
signed up for this service.</p></td>
</tr>
<tr class="even">
<td><code id="sns_add_permission_:_ActionName">ActionName</code></td>
<td><p>[required] The action you want to allow for the specified
principal(s).</p>
<p>Valid values: Any Amazon SNS action name, for example
<code>publish</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$add_permission(
      TopicArn = "string",
      Label = "string",
      AWSAccountId = list(
        "string"
      ),
      ActionName = list(
        "string"
      )
    )
