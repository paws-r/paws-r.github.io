<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_describe_event_subscriptions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all the subscription descriptions for a customer account

### Description

Lists all the subscription descriptions for a customer account. The
description for a subscription includes `SubscriptionName`,
`SNSTopicARN`, `CustomerID`, `SourceType`, `SourceID`, `CreationTime`,
and `Status`.

If you specify a `SubscriptionName`, lists the description for that
subscription.

### Usage

    docdb_describe_event_subscriptions(SubscriptionName, Filters,
      MaxRecords, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="docdb_describe_event_subscriptions_:_SubscriptionName">SubscriptionName</code></td>
<td><p>The name of the Amazon DocumentDB event notification subscription
that you want to describe.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_describe_event_subscriptions_:_Filters">Filters</code></td>
<td><p>This parameter is not currently supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_describe_event_subscriptions_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token (marker) is included in the response so that the
remaining results can be retrieved.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_describe_event_subscriptions_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous request. If
this parameter is specified, the response includes only records beyond
the marker, up to the value specified by
<code>MaxRecords</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      EventSubscriptionsList = list(
        list(
          CustomerAwsId = "string",
          CustSubscriptionId = "string",
          SnsTopicArn = "string",
          Status = "string",
          SubscriptionCreationTime = "string",
          SourceType = "string",
          SourceIdsList = list(
            "string"
          ),
          EventCategoriesList = list(
            "string"
          ),
          Enabled = TRUE|FALSE,
          EventSubscriptionArn = "string"
        )
      )
    )

### Request syntax

    svc$describe_event_subscriptions(
      SubscriptionName = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxRecords = 123,
      Marker = "string"
    )
