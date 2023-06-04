<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>marketplacemetering_meter_usage</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## API to emit metering records

### Description

API to emit metering records. For identical requests, the API is
idempotent. It simply returns the metering record ID.

`meter_usage` is authenticated on the buyer's AWS account using
credentials from the EC2 instance, ECS task, or EKS pod.

`meter_usage` can optionally include multiple usage allocations, to
provide customers with usage data split into buckets by tags that you
define (or allow the customer to define).

Usage records are expected to be submitted as quickly as possible after
the event that is being recorded, and are not accepted more than 6 hours
after the event.

### Usage

    marketplacemetering_meter_usage(ProductCode, Timestamp, UsageDimension,
      UsageQuantity, DryRun, UsageAllocations)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="marketplacemetering_meter_usage_:_ProductCode">ProductCode</code></td>
<td><p>[required] Product code is used to uniquely identify a product in
AWS Marketplace. The product code should be the same as the one used
during the publishing of a new product.</p></td>
</tr>
<tr class="even">
<td><code
id="marketplacemetering_meter_usage_:_Timestamp">Timestamp</code></td>
<td><p>[required] Timestamp, in UTC, for which the usage is being
reported. Your application can meter usage for up to one hour in the
past. Make sure the <code>timestamp</code> value is not before the start
of the software usage.</p></td>
</tr>
<tr class="odd">
<td><code
id="marketplacemetering_meter_usage_:_UsageDimension">UsageDimension</code></td>
<td><p>[required] It will be one of the fcp dimension name provided
during the publishing of the product.</p></td>
</tr>
<tr class="even">
<td><code
id="marketplacemetering_meter_usage_:_UsageQuantity">UsageQuantity</code></td>
<td><p>Consumption value for the hour. Defaults to <code>0</code> if not
specified.</p></td>
</tr>
<tr class="odd">
<td><code
id="marketplacemetering_meter_usage_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the permissions required for the action,
but does not make the request. If you have the permissions, the request
returns <code>DryRunOperation</code>; otherwise, it returns
<code>UnauthorizedException</code>. Defaults to <code>false</code> if
not specified.</p></td>
</tr>
<tr class="even">
<td><code
id="marketplacemetering_meter_usage_:_UsageAllocations">UsageAllocations</code></td>
<td><p>The set of <code>UsageAllocations</code> to submit.</p>
<p>The sum of all <code>UsageAllocation</code> quantities must equal the
<code>UsageQuantity</code> of the <code>meter_usage</code> request, and
each <code>UsageAllocation</code> must have a unique set of tags
(include no tags).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MeteringRecordId = "string"
    )

### Request syntax

    svc$meter_usage(
      ProductCode = "string",
      Timestamp = as.POSIXct(
        "2015-01-01"
      ),
      UsageDimension = "string",
      UsageQuantity = 123,
      DryRun = TRUE|FALSE,
      UsageAllocations = list(
        list(
          AllocatedUsageQuantity = 123,
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      )
    )
