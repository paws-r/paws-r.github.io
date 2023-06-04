<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>health_describe_event_details_for_organization</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns detailed information about one or more specified events for one or more Amazon Web Services accounts in your organization

### Description

Returns detailed information about one or more specified events for one
or more Amazon Web Services accounts in your organization. This
information includes standard event data (such as the Amazon Web
Services Region and service), an event description, and (depending on
the event) possible metadata. This operation doesn't return affected
entities, such as the resources related to the event. To return affected
entities, use the `describe_affected_entities_for_organization`
operation.

Before you can call this operation, you must first enable Health to work
with Organizations. To do this, call the
`enable_health_service_access_for_organization` operation from your
organization's management account.

When you call the `describe_event_details_for_organization` operation,
specify the `organizationEventDetailFilters` object in the request.
Depending on the Health event type, note the following differences:

-   To return event details for a public event, you must specify a null
    value for the `awsAccountId` parameter. If you specify an account ID
    for a public event, Health returns an error message because public
    events aren't specific to an account.

-   To return event details for an event that is specific to an account
    in your organization, you must specify the `awsAccountId` parameter
    in the request. If you don't specify an account ID, Health returns
    an error message because the event is specific to an account in your
    organization.

For more information, see
[Event](https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html).

This operation doesn't support resource-level permissions. You can't use
this operation to allow or deny access to specific Health events. For
more information, see [Resource- and action-based
conditions](https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html#resource-action-based-conditions)
in the *Health User Guide*.

### Usage

    health_describe_event_details_for_organization(
      organizationEventDetailFilters, locale)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="health_describe_event_details_for_organization_:_organizationEventDetailFilters">organizationEventDetailFilters</code></td>
<td><p>[required] A set of JSON elements that includes the
<code>awsAccountId</code> and the <code>eventArn</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="health_describe_event_details_for_organization_:_locale">locale</code></td>
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
          awsAccountId = "string",
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
          awsAccountId = "string",
          eventArn = "string",
          errorName = "string",
          errorMessage = "string"
        )
      )
    )

### Request syntax

    svc$describe_event_details_for_organization(
      organizationEventDetailFilters = list(
        list(
          eventArn = "string",
          awsAccountId = "string"
        )
      ),
      locale = "string"
    )
