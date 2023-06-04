<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_update_topic_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the permissions of a topic

### Description

Updates the permissions of a topic.

### Usage

    quicksight_update_topic_permissions(AwsAccountId, TopicId,
      GrantPermissions, RevokePermissions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_update_topic_permissions_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the topic that you want to update the permissions for.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_topic_permissions_:_TopicId">TopicId</code></td>
<td><p>[required] The ID of the topic that you want to modify. This ID
is unique per Amazon Web Services Region for each Amazon Web Services
account.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_update_topic_permissions_:_GrantPermissions">GrantPermissions</code></td>
<td><p>The resource permissions that you want to grant to the
topic.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_topic_permissions_:_RevokePermissions">RevokePermissions</code></td>
<td><p>The resource permissions that you want to revoke from the
topic.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TopicId = "string",
      TopicArn = "string",
      Permissions = list(
        list(
          Principal = "string",
          Actions = list(
            "string"
          )
        )
      ),
      Status = 123,
      RequestId = "string"
    )

### Request syntax

    svc$update_topic_permissions(
      AwsAccountId = "string",
      TopicId = "string",
      GrantPermissions = list(
        list(
          Principal = "string",
          Actions = list(
            "string"
          )
        )
      ),
      RevokePermissions = list(
        list(
          Principal = "string",
          Actions = list(
            "string"
          )
        )
      )
    )
