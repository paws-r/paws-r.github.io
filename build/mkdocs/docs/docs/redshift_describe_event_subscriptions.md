<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_describe_event_subscriptions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists descriptions of all the Amazon Redshift event notification subscriptions for a customer account

### Description

Lists descriptions of all the Amazon Redshift event notification
subscriptions for a customer account. If you specify a subscription
name, lists the description for that subscription.

If you specify both tag keys and tag values in the same request, Amazon
Redshift returns all event notification subscriptions that match any
combination of the specified keys and values. For example, if you have
`owner` and `environment` for tag keys, and `admin` and `test` for tag
values, all subscriptions that have any combination of those values are
returned.

If both tag keys and values are omitted from the request, subscriptions
are returned regardless of whether they have tag keys or values
associated with them.

### Usage

    redshift_describe_event_subscriptions(SubscriptionName, MaxRecords,
      Marker, TagKeys, TagValues)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_describe_event_subscriptions_:_SubscriptionName">SubscriptionName</code></td>
<td><p>The name of the Amazon Redshift event notification subscription
to be described.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_event_subscriptions_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of response records to return in each call. If
the number of remaining response records exceeds the specified
<code>MaxRecords</code> value, a value is returned in a
<code>marker</code> field of the response. You can retrieve the next set
of records by retrying the command with the returned marker value.</p>
<p>Default: <code>100</code></p>
<p>Constraints: minimum 20, maximum 100.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_event_subscriptions_:_Marker">Marker</code></td>
<td><p>An optional parameter that specifies the starting point to return
a set of response records. When the results of a
DescribeEventSubscriptions request exceed the value specified in
<code>MaxRecords</code>, Amazon Web Services returns a value in the
<code>Marker</code> field of the response. You can retrieve the next set
of response records by providing the returned marker value in the
<code>Marker</code> parameter and retrying the request.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_event_subscriptions_:_TagKeys">TagKeys</code></td>
<td><p>A tag key or keys for which you want to return all matching event
notification subscriptions that are associated with the specified key or
keys. For example, suppose that you have subscriptions that are tagged
with keys called <code>owner</code> and <code>environment</code>. If you
specify both of these tag keys in the request, Amazon Redshift returns a
response with the subscriptions that have either or both of these tag
keys associated with them.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_event_subscriptions_:_TagValues">TagValues</code></td>
<td><p>A tag value or values for which you want to return all matching
event notification subscriptions that are associated with the specified
tag value or values. For example, suppose that you have subscriptions
that are tagged with values called <code>admin</code> and
<code>test</code>. If you specify both of these tag values in the
request, Amazon Redshift returns a response with the subscriptions that
have either or both of these tag values associated with them.</p></td>
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
          SubscriptionCreationTime = as.POSIXct(
            "2015-01-01"
          ),
          SourceType = "string",
          SourceIdsList = list(
            "string"
          ),
          EventCategoriesList = list(
            "string"
          ),
          Severity = "string",
          Enabled = TRUE|FALSE,
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_event_subscriptions(
      SubscriptionName = "string",
      MaxRecords = 123,
      Marker = "string",
      TagKeys = list(
        "string"
      ),
      TagValues = list(
        "string"
      )
    )
