<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_batch_disable_standards</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables the standards specified by the provided StandardsSubscriptionArns

### Description

Disables the standards specified by the provided
`StandardsSubscriptionArns`.

For more information, see [Security
Standards](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards.html)
section of the *Security Hub User Guide*.

### Usage

    securityhub_batch_disable_standards(StandardsSubscriptionArns)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_batch_disable_standards_:_StandardsSubscriptionArns">StandardsSubscriptionArns</code></td>
<td><p>[required] The ARNs of the standards subscriptions to
disable.</p></td>
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
      )
    )

### Request syntax

    svc$batch_disable_standards(
      StandardsSubscriptionArns = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # The following example disables a security standard in Security Hub.
    svc$batch_disable_standards(
      StandardsSubscriptionArns = list(
        "arn:aws:securityhub:us-west-1:123456789012:subscription/pci-dss/v/3.2.1"
      )
    )

    ## End(Not run)
