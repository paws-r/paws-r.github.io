<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_batch_enable_standards</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables the standards specified by the provided StandardsArn

### Description

Enables the standards specified by the provided `StandardsArn`. To
obtain the ARN for a standard, use the `describe_standards` operation.

For more information, see the [Security
Standards](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards.html)
section of the *Security Hub User Guide*.

### Usage

    securityhub_batch_enable_standards(StandardsSubscriptionRequests)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_batch_enable_standards_:_StandardsSubscriptionRequests">StandardsSubscriptionRequests</code></td>
<td><p>[required] The list of standards checks to enable.</p></td>
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

    svc$batch_enable_standards(
      StandardsSubscriptionRequests = list(
        list(
          StandardsArn = "string",
          StandardsInput = list(
            "string"
          )
        )
      )
    )

### Examples

    ## Not run: 
    # The following example imports findings from a third party provider to
    # Security Hub.
    svc$batch_enable_standards(
      StandardsSubscriptionRequests = list(
        list(
          StandardsArn = "arn:aws:securityhub:us-west-1::standards/pci-dss/v/3.2.1"
        )
      )
    )

    ## End(Not run)
