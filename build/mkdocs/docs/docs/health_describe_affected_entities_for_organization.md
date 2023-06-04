<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>health_describe_affected_entities_for_organization</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of entities that have been affected by one or more events for one or more accounts in your organization in Organizations, based on the filter criteria

### Description

Returns a list of entities that have been affected by one or more events
for one or more accounts in your organization in Organizations, based on
the filter criteria. Entities can refer to individual customer
resources, groups of customer resources, or any other construct,
depending on the Amazon Web Service.

At least one event Amazon Resource Name (ARN) and account ID are
required.

Before you can call this operation, you must first enable Health to work
with Organizations. To do this, call the
`enable_health_service_access_for_organization` operation from your
organization's management account.

-   This API operation uses pagination. Specify the `nextToken`
    parameter in the next request to return more results.

-   This operation doesn't support resource-level permissions. You can't
    use this operation to allow or deny access to specific Health
    events. For more information, see [Resource- and action-based
    conditions](https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html#resource-action-based-conditions)
    in the *Health User Guide*.

### Usage

    health_describe_affected_entities_for_organization(
      organizationEntityFilters, locale, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="health_describe_affected_entities_for_organization_:_organizationEntityFilters">organizationEntityFilters</code></td>
<td><p>[required] A JSON set of elements including the
<code>awsAccountId</code> and the <code>eventArn</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="health_describe_affected_entities_for_organization_:_locale">locale</code></td>
<td><p>The locale (language) to return information in. English (en) is
the default and the only supported value at this time.</p></td>
</tr>
<tr class="odd">
<td><code
id="health_describe_affected_entities_for_organization_:_nextToken">nextToken</code></td>
<td><p>If the results of a search are large, only a portion of the
results are returned, and a <code>nextToken</code> pagination token is
returned in the response. To retrieve the next batch of results, reissue
the search request and include the returned token. When all results have
been returned, the response does not contain a pagination token
value.</p></td>
</tr>
<tr class="even">
<td><code
id="health_describe_affected_entities_for_organization_:_maxResults">maxResults</code></td>
<td><p>The maximum number of items to return in one batch, between 10
and 100, inclusive.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      entities = list(
        list(
          entityArn = "string",
          eventArn = "string",
          entityValue = "string",
          entityUrl = "string",
          awsAccountId = "string",
          lastUpdatedTime = as.POSIXct(
            "2015-01-01"
          ),
          statusCode = "IMPAIRED"|"UNIMPAIRED"|"UNKNOWN",
          tags = list(
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
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_affected_entities_for_organization(
      organizationEntityFilters = list(
        list(
          eventArn = "string",
          awsAccountId = "string"
        )
      ),
      locale = "string",
      nextToken = "string",
      maxResults = 123
    )
