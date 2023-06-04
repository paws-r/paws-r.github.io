<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>neptune_describe_db_subnet_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of DBSubnetGroup descriptions

### Description

Returns a list of DBSubnetGroup descriptions. If a DBSubnetGroupName is
specified, the list will contain only the descriptions of the specified
DBSubnetGroup.

For an overview of CIDR ranges, go to the [Wikipedia
Tutorial](https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).

### Usage

    neptune_describe_db_subnet_groups(DBSubnetGroupName, Filters,
      MaxRecords, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="neptune_describe_db_subnet_groups_:_DBSubnetGroupName">DBSubnetGroupName</code></td>
<td><p>The name of the DB subnet group to return details for.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_describe_db_subnet_groups_:_Filters">Filters</code></td>
<td><p>This parameter is not currently supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_describe_db_subnet_groups_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token called a marker is included in the response so that the
remaining results can be retrieved.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_describe_db_subnet_groups_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous
DescribeDBSubnetGroups request. If this parameter is specified, the
response includes only records beyond the marker, up to the value
specified by <code>MaxRecords</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      DBSubnetGroups = list(
        list(
          DBSubnetGroupName = "string",
          DBSubnetGroupDescription = "string",
          VpcId = "string",
          SubnetGroupStatus = "string",
          Subnets = list(
            list(
              SubnetIdentifier = "string",
              SubnetAvailabilityZone = list(
                Name = "string"
              ),
              SubnetStatus = "string"
            )
          ),
          DBSubnetGroupArn = "string"
        )
      )
    )

### Request syntax

    svc$describe_db_subnet_groups(
      DBSubnetGroupName = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxRecords = 123,
      Marker = "string"
    )
