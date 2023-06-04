<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>marketplacemetering_batch_meter_usage</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## BatchMeterUsage is called from a SaaS application listed on AWS Marketplace to post metering records for a set of customers

### Description

`batch_meter_usage` is called from a SaaS application listed on AWS
Marketplace to post metering records for a set of customers.

For identical requests, the API is idempotent; requests can be retried
with the same records or a subset of the input records.

Every request to `batch_meter_usage` is for one product. If you need to
meter usage for multiple products, you must make multiple calls to
`batch_meter_usage`.

Usage records are expected to be submitted as quickly as possible after
the event that is being recorded, and are not accepted more than 6 hours
after the event.

`batch_meter_usage` can process up to 25 `UsageRecords` at a time.

A `UsageRecord` can optionally include multiple usage allocations, to
provide customers with usage data split into buckets by tags that you
define (or allow the customer to define).

`batch_meter_usage` returns a list of `UsageRecordResult` objects,
showing the result for each `UsageRecord`, as well as a list of
`UnprocessedRecords`, indicating errors in the service side that you
should retry.

`batch_meter_usage` requests must be less than 1MB in size.

For an example of using `batch_meter_usage`, see [BatchMeterUsage code
example](https://docs.aws.amazon.com/marketplace/latest/userguide/saas-code-examples.html#saas-batchmeterusage-example)
in the *AWS Marketplace Seller Guide*.

### Usage

    marketplacemetering_batch_meter_usage(UsageRecords, ProductCode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="marketplacemetering_batch_meter_usage_:_UsageRecords">UsageRecords</code></td>
<td><p>[required] The set of <code>UsageRecords</code> to submit.
<code>batch_meter_usage</code> accepts up to 25
<code>UsageRecords</code> at a time.</p></td>
</tr>
<tr class="even">
<td><code
id="marketplacemetering_batch_meter_usage_:_ProductCode">ProductCode</code></td>
<td><p>[required] Product code is used to uniquely identify a product in
AWS Marketplace. The product code should be the same as the one used
during the publishing of a new product.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Results = list(
        list(
          UsageRecord = list(
            Timestamp = as.POSIXct(
              "2015-01-01"
            ),
            CustomerIdentifier = "string",
            Dimension = "string",
            Quantity = 123,
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
          ),
          MeteringRecordId = "string",
          Status = "Success"|"CustomerNotSubscribed"|"DuplicateRecord"
        )
      ),
      UnprocessedRecords = list(
        list(
          Timestamp = as.POSIXct(
            "2015-01-01"
          ),
          CustomerIdentifier = "string",
          Dimension = "string",
          Quantity = 123,
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
      )
    )

### Request syntax

    svc$batch_meter_usage(
      UsageRecords = list(
        list(
          Timestamp = as.POSIXct(
            "2015-01-01"
          ),
          CustomerIdentifier = "string",
          Dimension = "string",
          Quantity = 123,
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
      ),
      ProductCode = "string"
    )
