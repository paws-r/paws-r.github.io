<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pi_list_available_resource_metrics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieve metrics of the specified types that can be queried for a specified DB instance

### Description

Retrieve metrics of the specified types that can be queried for a
specified DB instance.

### Usage

    pi_list_available_resource_metrics(ServiceType, Identifier, MetricTypes,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pi_list_available_resource_metrics_:_ServiceType">ServiceType</code></td>
<td><p>[required] The Amazon Web Services service for which Performance
Insights returns metrics.</p></td>
</tr>
<tr class="even">
<td><code
id="pi_list_available_resource_metrics_:_Identifier">Identifier</code></td>
<td><p>[required] An immutable identifier for a data source that is
unique within an Amazon Web Services Region. Performance Insights
gathers metrics from this data source. To use an Amazon RDS DB instance
as a data source, specify its <code>DbiResourceId</code> value. For
example, specify <code>db-ABCDEFGHIJKLMNOPQRSTU1VWZ</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="pi_list_available_resource_metrics_:_MetricTypes">MetricTypes</code></td>
<td><p>[required] The types of metrics to return in the response. Valid
values in the array include the following:</p>
<ul>
<li><p><code>os</code> (OS counter metrics) - All engines</p></li>
<li><p><code>db</code> (DB load metrics) - All engines except for Amazon
DocumentDB</p></li>
<li><p><code>db.sql.stats</code> (per-SQL metrics) - All engines except
for Amazon DocumentDB</p></li>
<li><p><code>db.sql_tokenized.stats</code> (per-SQL digest metrics) -
All engines except for Amazon DocumentDB</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="pi_list_available_resource_metrics_:_NextToken">NextToken</code></td>
<td><p>An optional pagination token provided by a previous request. If
this parameter is specified, the response includes only records beyond
the token, up to the value specified by
<code>MaxRecords</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="pi_list_available_resource_metrics_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return. If the
<code>MaxRecords</code> value is less than the number of existing items,
the response includes a pagination token.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Metrics = list(
        list(
          Metric = "string",
          Description = "string",
          Unit = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_available_resource_metrics(
      ServiceType = "RDS"|"DOCDB",
      Identifier = "string",
      MetricTypes = list(
        "string"
      ),
      NextToken = "string",
      MaxResults = 123
    )
