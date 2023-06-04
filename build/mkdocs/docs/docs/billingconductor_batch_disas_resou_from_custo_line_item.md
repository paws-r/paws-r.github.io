<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>billingconductor_batch_disassociate_resources_from_custom_line_item</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates a batch of resources from a percentage custom line item

### Description

Disassociates a batch of resources from a percentage custom line item.

### Usage

    billingconductor_batch_disassociate_resources_from_custom_line_item(
      TargetArn, ResourceArns, BillingPeriodRange)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="billingconductor_batch_disassociate_resources_from_custom_line_item_:_TargetArn">TargetArn</code></td>
<td><p>[required] A percentage custom line item ARN to disassociate the
resources from.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_batch_disassociate_resources_from_custom_line_item_:_ResourceArns">ResourceArns</code></td>
<td><p>[required] A list containing the ARNs of resources to be
disassociated.</p></td>
</tr>
<tr class="odd">
<td><code
id="billingconductor_batch_disassociate_resources_from_custom_line_item_:_BillingPeriodRange">BillingPeriodRange</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SuccessfullyDisassociatedResources = list(
        list(
          Arn = "string",
          Error = list(
            Message = "string",
            Reason = "INVALID_ARN"|"SERVICE_LIMIT_EXCEEDED"|"ILLEGAL_CUSTOMLINEITEM"|"INTERNAL_SERVER_EXCEPTION"|"INVALID_BILLING_PERIOD_RANGE"
          )
        )
      ),
      FailedDisassociatedResources = list(
        list(
          Arn = "string",
          Error = list(
            Message = "string",
            Reason = "INVALID_ARN"|"SERVICE_LIMIT_EXCEEDED"|"ILLEGAL_CUSTOMLINEITEM"|"INTERNAL_SERVER_EXCEPTION"|"INVALID_BILLING_PERIOD_RANGE"
          )
        )
      )
    )

### Request syntax

    svc$batch_disassociate_resources_from_custom_line_item(
      TargetArn = "string",
      ResourceArns = list(
        "string"
      ),
      BillingPeriodRange = list(
        InclusiveStartBillingPeriod = "string",
        ExclusiveEndBillingPeriod = "string"
      )
    )
