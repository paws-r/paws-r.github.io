<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>health_describe_affected_accounts_for_organization</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of accounts in the organization from Organizations that are affected by the provided event

### Description

Returns a list of accounts in the organization from Organizations that
are affected by the provided event. For more information about the
different types of Health events, see
[Event](https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html).

Before you can call this operation, you must first enable Health to work
with Organizations. To do this, call the
`enable_health_service_access_for_organization` operation from your
organization's management account.

This API operation uses pagination. Specify the `nextToken` parameter in
the next request to return more results.

### Usage

    health_describe_affected_accounts_for_organization(eventArn, nextToken,
      maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="health_describe_affected_accounts_for_organization_:_eventArn">eventArn</code></td>
<td><p>[required] The unique identifier for the event. The event ARN has
the
<code>arn:aws:health:event-region::event/SERVICE/EVENT_TYPE_CODE/EVENT_TYPE_PLUS_ID </code>
format.</p>
<p>For example, an event ARN might look like the following:</p>
<p><code
style="white-space: pre;">⁠arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456⁠</code></p></td>
</tr>
<tr class="even">
<td><code
id="health_describe_affected_accounts_for_organization_:_nextToken">nextToken</code></td>
<td><p>If the results of a search are large, only a portion of the
results are returned, and a <code>nextToken</code> pagination token is
returned in the response. To retrieve the next batch of results, reissue
the search request and include the returned token. When all results have
been returned, the response does not contain a pagination token
value.</p></td>
</tr>
<tr class="odd">
<td><code
id="health_describe_affected_accounts_for_organization_:_maxResults">maxResults</code></td>
<td><p>The maximum number of items to return in one batch, between 10
and 100, inclusive.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      affectedAccounts = list(
        "string"
      ),
      eventScopeCode = "PUBLIC"|"ACCOUNT_SPECIFIC"|"NONE",
      nextToken = "string"
    )

### Request syntax

    svc$describe_affected_accounts_for_organization(
      eventArn = "string",
      nextToken = "string",
      maxResults = 123
    )
