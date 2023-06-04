<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>devopsguru_list_notification_channels</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of notification channels configured for DevOps Guru

### Description

Returns a list of notification channels configured for DevOps Guru. Each
notification channel is used to notify you when DevOps Guru generates an
insight that contains information about how to improve your operations.
The one supported notification channel is Amazon Simple Notification
Service (Amazon SNS).

### Usage

    devopsguru_list_notification_channels(NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="devopsguru_list_notification_channels_:_NextToken">NextToken</code></td>
<td><p>The pagination token to use to retrieve the next page of results
for this operation. If this value is null, it retrieves the first
page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Channels = list(
        list(
          Id = "string",
          Config = list(
            Sns = list(
              TopicArn = "string"
            ),
            Filters = list(
              Severities = list(
                "LOW"|"MEDIUM"|"HIGH"
              ),
              MessageTypes = list(
                "NEW_INSIGHT"|"CLOSED_INSIGHT"|"NEW_ASSOCIATION"|"SEVERITY_UPGRADED"|"NEW_RECOMMENDATION"
              )
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_notification_channels(
      NextToken = "string"
    )
