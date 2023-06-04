<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_describe_topic_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the permissions of a topic

### Description

Describes the permissions of a topic.

### Usage

    quicksight_describe_topic_permissions(AwsAccountId, TopicId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_describe_topic_permissions_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the topic that you want described.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_describe_topic_permissions_:_TopicId">TopicId</code></td>
<td><p>[required] The ID of the topic that you want to describe. This ID
is unique per Amazon Web Services Region for each Amazon Web Services
account.</p></td>
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

    svc$describe_topic_permissions(
      AwsAccountId = "string",
      TopicId = "string"
    )
