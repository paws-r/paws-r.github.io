<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_describe_orderable_db_instance_options</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of orderable instance options for the specified engine

### Description

Returns a list of orderable instance options for the specified engine.

### Usage

    docdb_describe_orderable_db_instance_options(Engine, EngineVersion,
      DBInstanceClass, LicenseModel, Vpc, Filters, MaxRecords, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="docdb_describe_orderable_db_instance_options_:_Engine">Engine</code></td>
<td><p>[required] The name of the engine to retrieve instance options
for.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_describe_orderable_db_instance_options_:_EngineVersion">EngineVersion</code></td>
<td><p>The engine version filter value. Specify this parameter to show
only the available offerings that match the specified engine
version.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_describe_orderable_db_instance_options_:_DBInstanceClass">DBInstanceClass</code></td>
<td><p>The instance class filter value. Specify this parameter to show
only the available offerings that match the specified instance
class.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_describe_orderable_db_instance_options_:_LicenseModel">LicenseModel</code></td>
<td><p>The license model filter value. Specify this parameter to show
only the available offerings that match the specified license
model.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_describe_orderable_db_instance_options_:_Vpc">Vpc</code></td>
<td><p>The virtual private cloud (VPC) filter value. Specify this
parameter to show only the available VPC or non-VPC offerings.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_describe_orderable_db_instance_options_:_Filters">Filters</code></td>
<td><p>This parameter is not currently supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_describe_orderable_db_instance_options_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token (marker) is included in the response so that the
remaining results can be retrieved.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_describe_orderable_db_instance_options_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous request. If
this parameter is specified, the response includes only records beyond
the marker, up to the value specified by
<code>MaxRecords</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OrderableDBInstanceOptions = list(
        list(
          Engine = "string",
          EngineVersion = "string",
          DBInstanceClass = "string",
          LicenseModel = "string",
          AvailabilityZones = list(
            list(
              Name = "string"
            )
          ),
          Vpc = TRUE|FALSE
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$describe_orderable_db_instance_options(
      Engine = "string",
      EngineVersion = "string",
      DBInstanceClass = "string",
      LicenseModel = "string",
      Vpc = TRUE|FALSE,
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
