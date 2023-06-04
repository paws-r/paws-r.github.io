<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_describe_topic_refresh</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the status of a topic refresh

### Description

Describes the status of a topic refresh.

### Usage

    quicksight_describe_topic_refresh(AwsAccountId, TopicId, RefreshId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_describe_topic_refresh_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the topic whose refresh you want to describe.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_describe_topic_refresh_:_TopicId">TopicId</code></td>
<td><p>[required] The ID of the topic that you want to describe. This ID
is unique per Amazon Web Services Region for each Amazon Web Services
account.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_describe_topic_refresh_:_RefreshId">RefreshId</code></td>
<td><p>[required] The ID of the refresh, which is performed when the
topic is created or updated.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RefreshDetails = list(
        RefreshArn = "string",
        RefreshId = "string",
        RefreshStatus = "INITIALIZED"|"RUNNING"|"FAILED"|"COMPLETED"|"CANCELLED"
      ),
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$describe_topic_refresh(
      AwsAccountId = "string",
      TopicId = "string",
      RefreshId = "string"
    )
