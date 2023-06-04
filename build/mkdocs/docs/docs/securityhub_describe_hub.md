<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_describe_hub</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns details about the Hub resource in your account, including the HubArn and the time when you enabled Security Hub

### Description

Returns details about the Hub resource in your account, including the
`HubArn` and the time when you enabled Security Hub.

### Usage

    securityhub_describe_hub(HubArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="securityhub_describe_hub_:_HubArn">HubArn</code></td>
<td><p>The ARN of the Hub resource to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HubArn = "string",
      SubscribedAt = "string",
      AutoEnableControls = TRUE|FALSE,
      ControlFindingGenerator = "STANDARD_CONTROL"|"SECURITY_CONTROL"
    )

### Request syntax

    svc$describe_hub(
      HubArn = "string"
    )

### Examples

    ## Not run: 
    # The following example returns details about the Hub resource in the
    # calling account. The Hub resource represents the implementation of  the
    # AWS Security Hub service in the calling account.
    svc$describe_hub(
      HubArn = "arn:aws:securityhub:us-west-1:123456789012:hub/default"
    )

    ## End(Not run)
