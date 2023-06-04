<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>health_describe_event_details</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns detailed information about one or more specified events

### Description

Returns detailed information about one or more specified events.
Information includes standard event data (Amazon Web Services Region,
service, and so on, as returned by `describe_events`), a detailed event
description, and possible additional metadata that depends upon the
nature of the event. Affected entities are not included. To retrieve the
entities, use the `describe_affected_entities` operation.

If a specified event can't be retrieved, an error message is returned
for that event.

This operation supports resource-level permissions. You can use this
operation to allow or deny access to specific Health events. For more
information, see [Resource- and action-based
conditions](https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html#resource-action-based-conditions)
in the *Health User Guide*.

### Usage

    health_describe_event_details(eventArns, locale)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="health_describe_event_details_:_eventArns">eventArns</code></td>
<td><p>[required] A list of event ARNs (unique identifiers). For
example: <code
style="white-space: pre;">⁠"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456", "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"⁠</code></p></td>
</tr>
<tr class="even">
<td><code id="health_describe_event_details_:_locale">locale</code></td>
<td><p>The locale (language) to return information in. English (en) is
the default and the only supported value at this time.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      successfulSet = list(
        list(
          event = list(
            arn = "string",
            service = "string",
            eventTypeCode = "string",
            eventTypeCategory = "issue"|"accountNotification"|"scheduledChange"|"investigation",
            region = "string",
            availabilityZone = "string",
            startTime = as.POSIXct(
              "2015-01-01"
            ),
            endTime = as.POSIXct(
              "2015-01-01"
            ),
            lastUpdatedTime = as.POSIXct(
              "2015-01-01"
            ),
            statusCode = "open"|"closed"|"upcoming",
            eventScopeCode = "PUBLIC"|"ACCOUNT_SPECIFIC"|"NONE"
          ),
          eventDescription = list(
            latestDescription = "string"
          ),
          eventMetadata = list(
            "string"
          )
        )
      ),
      failedSet = list(
        list(
          eventArn = "string",
          errorName = "string",
          errorMessage = "string"
        )
      )
    )

### Request syntax

    svc$describe_event_details(
      eventArns = list(
        "string"
      ),
      locale = "string"
    )
