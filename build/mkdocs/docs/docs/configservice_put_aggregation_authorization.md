<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_put_aggregation_authorization</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Authorizes the aggregator account and region to collect data from the source account and region

### Description

Authorizes the aggregator account and region to collect data from the
source account and region.

`put_aggregation_authorization` is an idempotent API. Subsequent
requests won’t create a duplicate resource if one was already created.
If a following request has different `tags` values, Config will ignore
these differences and treat it as an idempotent request of the previous.
In this case, `tags` will not be updated, even if they are different.

### Usage

    configservice_put_aggregation_authorization(AuthorizedAccountId,
      AuthorizedAwsRegion, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_put_aggregation_authorization_:_AuthorizedAccountId">AuthorizedAccountId</code></td>
<td><p>[required] The 12-digit account ID of the account authorized to
aggregate data.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_put_aggregation_authorization_:_AuthorizedAwsRegion">AuthorizedAwsRegion</code></td>
<td><p>[required] The region authorized to collect aggregated
data.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_put_aggregation_authorization_:_Tags">Tags</code></td>
<td><p>An array of tag object.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AggregationAuthorization = list(
        AggregationAuthorizationArn = "string",
        AuthorizedAccountId = "string",
        AuthorizedAwsRegion = "string",
        CreationTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$put_aggregation_authorization(
      AuthorizedAccountId = "string",
      AuthorizedAwsRegion = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
