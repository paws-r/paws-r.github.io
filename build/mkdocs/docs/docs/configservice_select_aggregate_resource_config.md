<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_select_aggregate_resource_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Accepts a structured query language (SQL) SELECT command and an aggregator to query configuration state of Amazon Web Services resources across multiple accounts and regions, performs the corresponding search, and returns resource configurations matching the properties

### Description

Accepts a structured query language (SQL) SELECT command and an
aggregator to query configuration state of Amazon Web Services resources
across multiple accounts and regions, performs the corresponding search,
and returns resource configurations matching the properties.

For more information about query components, see the [**Query
Components**](https://docs.aws.amazon.com/config/latest/developerguide/query-components.html)
section in the Config Developer Guide.

If you run an aggregation query (i.e., using `⁠GROUP BY⁠` or using
aggregate functions such as `COUNT`; e.g.,
`⁠SELECT resourceId, COUNT(*) WHERE resourceType = 'AWS::IAM::Role' GROUP BY resourceId⁠`)
and do not specify the `MaxResults` or the `Limit` query parameters, the
default page size is set to 500.

If you run a non-aggregation query (i.e., not using `⁠GROUP BY⁠` or
aggregate function; e.g.,
`⁠SELECT * WHERE resourceType = 'AWS::IAM::Role'⁠`) and do not specify the
`MaxResults` or the `Limit` query parameters, the default page size is
set to 25.

### Usage

    configservice_select_aggregate_resource_config(Expression,
      ConfigurationAggregatorName, Limit, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_select_aggregate_resource_config_:_Expression">Expression</code></td>
<td><p>[required] The SQL query SELECT command.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_select_aggregate_resource_config_:_ConfigurationAggregatorName">ConfigurationAggregatorName</code></td>
<td><p>[required] The name of the configuration aggregator.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_select_aggregate_resource_config_:_Limit">Limit</code></td>
<td><p>The maximum number of query results returned on each
page.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_select_aggregate_resource_config_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of query results returned on each page. Config
also allows the Limit request parameter.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_select_aggregate_resource_config_:_NextToken">NextToken</code></td>
<td><p>The nextToken string returned in a previous request that you use
to request the next page of results in a paginated response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Results = list(
        "string"
      ),
      QueryInfo = list(
        SelectFields = list(
          list(
            Name = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$select_aggregate_resource_config(
      Expression = "string",
      ConfigurationAggregatorName = "string",
      Limit = 123,
      MaxResults = 123,
      NextToken = "string"
    )
