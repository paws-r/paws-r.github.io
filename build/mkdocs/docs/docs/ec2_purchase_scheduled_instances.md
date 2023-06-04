<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_purchase_scheduled_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## You can no longer purchase Scheduled Instances

### Description

You can no longer purchase Scheduled Instances.

Purchases the Scheduled Instances with the specified schedule.

Scheduled Instances enable you to purchase Amazon EC2 compute capacity
by the hour for a one-year term. Before you can purchase a Scheduled
Instance, you must call `describe_scheduled_instance_availability` to
check for available schedules and obtain a purchase token. After you
purchase a Scheduled Instance, you must call `run_scheduled_instances`
during each scheduled time period.

After you purchase a Scheduled Instance, you can't cancel, modify, or
resell your purchase.

### Usage

    ec2_purchase_scheduled_instances(ClientToken, DryRun, PurchaseRequests)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_purchase_scheduled_instances_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier that ensures the idempotency of
the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring
Idempotency</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_purchase_scheduled_instances_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_purchase_scheduled_instances_:_PurchaseRequests">PurchaseRequests</code></td>
<td><p>[required] The purchase requests.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ScheduledInstanceSet = list(
        list(
          AvailabilityZone = "string",
          CreateDate = as.POSIXct(
            "2015-01-01"
          ),
          HourlyPrice = "string",
          InstanceCount = 123,
          InstanceType = "string",
          NetworkPlatform = "string",
          NextSlotStartTime = as.POSIXct(
            "2015-01-01"
          ),
          Platform = "string",
          PreviousSlotEndTime = as.POSIXct(
            "2015-01-01"
          ),
          Recurrence = list(
            Frequency = "string",
            Interval = 123,
            OccurrenceDaySet = list(
              123
            ),
            OccurrenceRelativeToEnd = TRUE|FALSE,
            OccurrenceUnit = "string"
          ),
          ScheduledInstanceId = "string",
          SlotDurationInHours = 123,
          TermEndDate = as.POSIXct(
            "2015-01-01"
          ),
          TermStartDate = as.POSIXct(
            "2015-01-01"
          ),
          TotalScheduledInstanceHours = 123
        )
      )
    )

### Request syntax

    svc$purchase_scheduled_instances(
      ClientToken = "string",
      DryRun = TRUE|FALSE,
      PurchaseRequests = list(
        list(
          InstanceCount = 123,
          PurchaseToken = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # This example purchases a Scheduled Instance.
    svc$purchase_scheduled_instances(
      PurchaseRequests = list(
        list(
          InstanceCount = 1L,
          PurchaseToken = "eyJ2IjoiMSIsInMiOjEsImMiOi..."
        )
      )
    )

    ## End(Not run)
