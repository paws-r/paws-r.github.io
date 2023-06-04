<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_describe_account_limits</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the current Amazon Pinpoint SMS Voice V2 resource quotas for your account

### Description

Describes the current Amazon Pinpoint SMS Voice V2 resource quotas for
your account. The description for a quota includes the quota name,
current usage toward that quota, and the quota's maximum value.

When you establish an Amazon Web Services account, the account has
initial quotas on the maximum number of configuration sets, opt-out
lists, phone numbers, and pools that you can create in a given Region.
For more information see [Amazon Pinpoint
quotas](https://docs.aws.amazon.com/pinpoint/latest/developerguide/quotas.html)
in the *Amazon Pinpoint Developer Guide*.

### Usage

    pinpointsmsvoicev2_describe_account_limits(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_describe_account_limits_:_NextToken">NextToken</code></td>
<td><p>The token to be used for the next set of paginated results. You
don't need to supply a value for this field in the initial
request.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_describe_account_limits_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per each
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AccountLimits = list(
        list(
          Name = "PHONE_NUMBERS"|"POOLS"|"CONFIGURATION_SETS"|"OPT_OUT_LISTS",
          Used = 123,
          Max = 123
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_account_limits(
      NextToken = "string",
      MaxResults = 123
    )
