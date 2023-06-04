<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_describe_aggregation_authorizations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of authorizations granted to various aggregator accounts and regions

### Description

Returns a list of authorizations granted to various aggregator accounts
and regions.

### Usage

    configservice_describe_aggregation_authorizations(Limit, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_describe_aggregation_authorizations_:_Limit">Limit</code></td>
<td><p>The maximum number of AggregationAuthorizations returned on each
page. The default is maximum. If you specify 0, Config uses the
default.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_describe_aggregation_authorizations_:_NextToken">NextToken</code></td>
<td><p>The <code>nextToken</code> string returned on a previous page
that you use to get the next page of results in a paginated
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AggregationAuthorizations = list(
        list(
          AggregationAuthorizationArn = "string",
          AuthorizedAccountId = "string",
          AuthorizedAwsRegion = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_aggregation_authorizations(
      Limit = 123,
      NextToken = "string"
    )
