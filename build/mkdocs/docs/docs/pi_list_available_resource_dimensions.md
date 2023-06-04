<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pi_list_available_resource_dimensions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieve the dimensions that can be queried for each specified metric type on a specified DB instance

### Description

Retrieve the dimensions that can be queried for each specified metric
type on a specified DB instance.

### Usage

    pi_list_available_resource_dimensions(ServiceType, Identifier, Metrics,
      MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pi_list_available_resource_dimensions_:_ServiceType">ServiceType</code></td>
<td><p>[required] The Amazon Web Services service for which Performance
Insights returns metrics.</p></td>
</tr>
<tr class="even">
<td><code
id="pi_list_available_resource_dimensions_:_Identifier">Identifier</code></td>
<td><p>[required] An immutable identifier for a data source that is
unique within an Amazon Web Services Region. Performance Insights
gathers metrics from this data source. To use an Amazon RDS DB instance
as a data source, specify its <code>DbiResourceId</code> value. For
example, specify <code>db-ABCDEFGHIJKLMNOPQRSTU1VWZ</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="pi_list_available_resource_dimensions_:_Metrics">Metrics</code></td>
<td><p>[required] The types of metrics for which to retrieve dimensions.
Valid values include <code>db.load</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="pi_list_available_resource_dimensions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return in the response. If more
items exist than the specified <code>MaxRecords</code> value, a
pagination token is included in the response so that the remaining
results can be retrieved.</p></td>
</tr>
<tr class="odd">
<td><code
id="pi_list_available_resource_dimensions_:_NextToken">NextToken</code></td>
<td><p>An optional pagination token provided by a previous request. If
this parameter is specified, the response includes only records beyond
the token, up to the value specified by
<code>MaxRecords</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MetricDimensions = list(
        list(
          Metric = "string",
          Groups = list(
            list(
              Group = "string",
              Dimensions = list(
                list(
                  Identifier = "string"
                )
              )
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_available_resource_dimensions(
      ServiceType = "RDS"|"DOCDB",
      Identifier = "string",
      Metrics = list(
        "string"
      ),
      MaxResults = 123,
      NextToken = "string"
    )
