<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pi_get_dimension_key_details</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get the attributes of the specified dimension group for a DB instance or data source

### Description

Get the attributes of the specified dimension group for a DB instance or
data source. For example, if you specify a SQL ID,
`get_dimension_key_details` retrieves the full text of the dimension
`db.sql.statement` associated with this ID. This operation is useful
because `get_resource_metrics` and `describe_dimension_keys` don't
support retrieval of large SQL statement text.

### Usage

    pi_get_dimension_key_details(ServiceType, Identifier, Group,
      GroupIdentifier, RequestedDimensions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pi_get_dimension_key_details_:_ServiceType">ServiceType</code></td>
<td><p>[required] The Amazon Web Services service for which Performance
Insights returns data. The only valid value is
<code>RDS</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="pi_get_dimension_key_details_:_Identifier">Identifier</code></td>
<td><p>[required] The ID for a data source from which to gather
dimension data. This ID must be immutable and unique within an Amazon
Web Services Region. When a DB instance is the data source, specify its
<code>DbiResourceId</code> value. For example, specify
<code>db-ABCDEFGHIJKLMNOPQRSTU1VW2X</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="pi_get_dimension_key_details_:_Group">Group</code></td>
<td><p>[required] The name of the dimension group. Performance Insights
searches the specified group for the dimension group ID. The following
group name values are valid:</p>
<ul>
<li><p><code>db.query</code> (Amazon DocumentDB only)</p></li>
<li><p><code>db.sql</code> (Amazon RDS and Aurora only)</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="pi_get_dimension_key_details_:_GroupIdentifier">GroupIdentifier</code></td>
<td><p>[required] The ID of the dimension group from which to retrieve
dimension details. For dimension group <code>db.sql</code>, the group ID
is <code>db.sql.id</code>. The following group ID values are valid:</p>
<ul>
<li><p><code>db.sql.id</code> for dimension group <code>db.sql</code>
(Aurora and RDS only)</p></li>
<li><p><code>db.query.id</code> for dimension group
<code>db.query</code> (DocumentDB only)</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="pi_get_dimension_key_details_:_RequestedDimensions">RequestedDimensions</code></td>
<td><p>A list of dimensions to retrieve the detail data for within the
given dimension group. If you don't specify this parameter, Performance
Insights returns all dimension data within the specified dimension
group. Specify dimension names for the following dimension groups:</p>
<ul>
<li><p><code>db.sql</code> - Specify either the full dimension name
<code>db.sql.statement</code> or the short dimension name
<code>statement</code> (Aurora and RDS only).</p></li>
<li><p><code>db.query</code> - Specify either the full dimension name
<code>db.query.statement</code> or the short dimension name
<code>statement</code> (DocumentDB only).</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Dimensions = list(
        list(
          Value = "string",
          Dimension = "string",
          Status = "AVAILABLE"|"PROCESSING"|"UNAVAILABLE"
        )
      )
    )

### Request syntax

    svc$get_dimension_key_details(
      ServiceType = "RDS"|"DOCDB",
      Identifier = "string",
      Group = "string",
      GroupIdentifier = "string",
      RequestedDimensions = list(
        "string"
      )
    )
