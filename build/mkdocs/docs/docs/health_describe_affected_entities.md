<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>health_describe_affected_entities</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of entities that have been affected by the specified events, based on the specified filter criteria

### Description

Returns a list of entities that have been affected by the specified
events, based on the specified filter criteria. Entities can refer to
individual customer resources, groups of customer resources, or any
other construct, depending on the Amazon Web Service. Events that have
impact beyond that of the affected entities, or where the extent of
impact is unknown, include at least one entity indicating this.

At least one event ARN is required.

-   This API operation uses pagination. Specify the `nextToken`
    parameter in the next request to return more results.

-   This operation supports resource-level permissions. You can use this
    operation to allow or deny access to specific Health events. For
    more information, see [Resource- and action-based
    conditions](https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html#resource-action-based-conditions)
    in the *Health User Guide*.

### Usage

    health_describe_affected_entities(filter, locale, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="health_describe_affected_entities_:_filter">filter</code></td>
<td><p>[required] Values to narrow the results returned. At least one
event ARN is required.</p></td>
</tr>
<tr class="even">
<td><code
id="health_describe_affected_entities_:_locale">locale</code></td>
<td><p>The locale (language) to return information in. English (en) is
the default and the only supported value at this time.</p></td>
</tr>
<tr class="odd">
<td><code
id="health_describe_affected_entities_:_nextToken">nextToken</code></td>
<td><p>If the results of a search are large, only a portion of the
results are returned, and a <code>nextToken</code> pagination token is
returned in the response. To retrieve the next batch of results, reissue
the search request and include the returned token. When all results have
been returned, the response does not contain a pagination token
value.</p></td>
</tr>
<tr class="even">
<td><code
id="health_describe_affected_entities_:_maxResults">maxResults</code></td>
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
      nextToken = "string"
    )

### Request syntax

    svc$describe_affected_entities(
      filter = list(
        eventArns = list(
          "string"
        ),
        entityArns = list(
          "string"
        ),
        entityValues = list(
          "string"
        ),
        lastUpdatedTimes = list(
          list(
            from = as.POSIXct(
              "2015-01-01"
            ),
            to = as.POSIXct(
              "2015-01-01"
            )
          )
        ),
        tags = list(
          list(
            "string"
          )
        ),
        statusCodes = list(
          "IMPAIRED"|"UNIMPAIRED"|"UNKNOWN"
        )
      ),
      locale = "string",
      nextToken = "string",
      maxResults = 123
    )
