<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_describe_source_regions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the source Amazon Web Services Regions where the current Amazon Web Services Region can create a read replica, copy a DB snapshot from, or replicate automated backups from

### Description

Returns a list of the source Amazon Web Services Regions where the
current Amazon Web Services Region can create a read replica, copy a DB
snapshot from, or replicate automated backups from.

Use this operation to determine whether cross-Region features are
supported between other Regions and your current Region. This operation
supports pagination.

To return information about the Regions that are enabled for your
account, or all Regions, use the EC2 operation `DescribeRegions`. For
more information, see
[DescribeRegions](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeRegions.html)
in the *Amazon EC2 API Reference*.

### Usage

    rds_describe_source_regions(RegionName, MaxRecords, Marker, Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_describe_source_regions_:_RegionName">RegionName</code></td>
<td><p>The source Amazon Web Services Region name. For example,
<code>us-east-1</code>.</p>
<p>Constraints:</p>
<ul>
<li><p>Must specify a valid Amazon Web Services Region name.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_source_regions_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token called a marker is included in the response so you can
retrieve the remaining results.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
<tr class="odd">
<td><code id="rds_describe_source_regions_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous
<code>describe_source_regions</code> request. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by <code>MaxRecords</code>.</p></td>
</tr>
<tr class="even">
<td><code id="rds_describe_source_regions_:_Filters">Filters</code></td>
<td><p>This parameter isn't currently supported.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      SourceRegions = list(
        list(
          RegionName = "string",
          Endpoint = "string",
          Status = "string",
          SupportsDBInstanceAutomatedBackupsReplication = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$describe_source_regions(
      RegionName = "string",
      MaxRecords = 123,
      Marker = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      )
    )
