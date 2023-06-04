<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_list_log_subscriptions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the active log subscriptions for the Amazon Web Services account

### Description

Lists the active log subscriptions for the Amazon Web Services account.

### Usage

    directoryservice_list_log_subscriptions(DirectoryId, NextToken, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_list_log_subscriptions_:_DirectoryId">DirectoryId</code></td>
<td><p>If a <em>DirectoryID</em> is provided, lists only the log
subscription associated with that directory. If no <em>DirectoryId</em>
is provided, lists all log subscriptions associated with your Amazon Web
Services account. If there are no log subscriptions for the Amazon Web
Services account or the directory, an empty list will be
returned.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_list_log_subscriptions_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_list_log_subscriptions_:_Limit">Limit</code></td>
<td><p>The maximum number of items returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LogSubscriptions = list(
        list(
          DirectoryId = "string",
          LogGroupName = "string",
          SubscriptionCreatedDateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_log_subscriptions(
      DirectoryId = "string",
      NextToken = "string",
      Limit = 123
    )
