<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_get_enabled_standards</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the standards that are currently enabled

### Description

Returns a list of the standards that are currently enabled.

### Usage

    securityhub_get_enabled_standards(StandardsSubscriptionArns, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_get_enabled_standards_:_StandardsSubscriptionArns">StandardsSubscriptionArns</code></td>
<td><p>The list of the standards subscription ARNs for the standards to
retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="securityhub_get_enabled_standards_:_NextToken">NextToken</code></td>
<td><p>The token that is required for pagination. On your first call to
the <code>get_enabled_standards</code> operation, set the value of this
parameter to <code>NULL</code>.</p>
<p>For subsequent calls to the operation, to continue listing data, set
the value of this parameter to the value returned from the previous
response.</p></td>
</tr>
<tr class="odd">
<td><code
id="securityhub_get_enabled_standards_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in the response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StandardsSubscriptions = list(
        list(
          StandardsSubscriptionArn = "string",
          StandardsArn = "string",
          StandardsInput = list(
            "string"
          ),
          StandardsStatus = "PENDING"|"READY"|"FAILED"|"DELETING"|"INCOMPLETE",
          StandardsStatusReason = list(
            StatusReasonCode = "NO_AVAILABLE_CONFIGURATION_RECORDER"|"INTERNAL_ERROR"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_enabled_standards(
      StandardsSubscriptionArns = list(
        "string"
      ),
      NextToken = "string",
      MaxResults = 123
    )

### Examples

    ## Not run: 
    # The following example returns a list of Security Hub standards that are
    # currently enabled in your account.
    svc$get_enabled_standards(
      StandardsSubscriptionArns = list(
        "arn:aws:securityhub:us-west-1:123456789012:subscription/pci-dss/v/3.2.1"
      )
    )

    ## End(Not run)
