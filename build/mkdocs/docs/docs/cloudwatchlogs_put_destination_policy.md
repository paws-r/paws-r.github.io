<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_put_destination_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates an access policy associated with an existing destination

### Description

Creates or updates an access policy associated with an existing
destination. An access policy is an [IAM policy
document](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html)
that is used to authorize claims to register a subscription filter
against a given destination.

### Usage

    cloudwatchlogs_put_destination_policy(destinationName, accessPolicy,
      forceUpdate)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_put_destination_policy_:_destinationName">destinationName</code></td>
<td><p>[required] A name for an existing destination.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_put_destination_policy_:_accessPolicy">accessPolicy</code></td>
<td><p>[required] An IAM policy document that authorizes cross-account
users to deliver their log events to the associated destination. This
can be up to 5120 bytes.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchlogs_put_destination_policy_:_forceUpdate">forceUpdate</code></td>
<td><p>Specify true if you are updating an existing destination policy
to grant permission to an organization ID instead of granting permission
to individual AWS accounts. Before you update a destination policy this
way, you must first update the subscription filters in the accounts that
send logs to this destination. If you do not, the subscription filters
might stop working. By specifying <code>true</code> for
<code>forceUpdate</code>, you are affirming that you have already
updated the subscription filters. For more information, see <a
href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Cross-Account-Log_Subscription-Update.html">Updating
an existing cross-account subscription</a></p>
<p>If you omit this parameter, the default of <code>false</code> is
used.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_destination_policy(
      destinationName = "string",
      accessPolicy = "string",
      forceUpdate = TRUE|FALSE
    )
