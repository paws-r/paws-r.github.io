<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_describe_spend_limits</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the current Amazon Pinpoint monthly spend limits for sending voice and text messages

### Description

Describes the current Amazon Pinpoint monthly spend limits for sending
voice and text messages.

When you establish an Amazon Web Services account, the account has
initial monthly spend limit in a given Region. For more information on
increasing your monthly spend limit, see [Requesting increases to your
monthly SMS spending quota for Amazon
Pinpoint](https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-awssupport-spend-threshold.html)
in the *Amazon Pinpoint User Guide*.

### Usage

    pinpointsmsvoicev2_describe_spend_limits(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_describe_spend_limits_:_NextToken">NextToken</code></td>
<td><p>The token to be used for the next set of paginated results. You
don't need to supply a value for this field in the initial
request.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_describe_spend_limits_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per each
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SpendLimits = list(
        list(
          Name = "TEXT_MESSAGE_MONTHLY_SPEND_LIMIT"|"VOICE_MESSAGE_MONTHLY_SPEND_LIMIT",
          EnforcedLimit = 123,
          MaxLimit = 123,
          Overridden = TRUE|FALSE
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_spend_limits(
      NextToken = "string",
      MaxResults = 123
    )
