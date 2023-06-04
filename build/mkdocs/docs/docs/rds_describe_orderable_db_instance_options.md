<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_describe_orderable_db_instance_options</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of orderable DB instance options for the specified DB engine, DB engine version, and DB instance class

### Description

Returns a list of orderable DB instance options for the specified DB
engine, DB engine version, and DB instance class.

### Usage

    rds_describe_orderable_db_instance_options(Engine, EngineVersion,
      DBInstanceClass, LicenseModel, AvailabilityZoneGroup, Vpc, Filters,
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
id="rds_describe_orderable_db_instance_options_:_Engine">Engine</code></td>
<td><p>[required] The name of the engine to retrieve DB instance options
for.</p>
<p>Valid Values:</p>
<ul>
<li><p><code>aurora-mysql</code></p></li>
<li><p><code>aurora-postgresql</code></p></li>
<li><p><code>custom-oracle-ee</code></p></li>
<li><p><code>mariadb</code></p></li>
<li><p><code>mysql</code></p></li>
<li><p><code>oracle-ee</code></p></li>
<li><p><code>oracle-ee-cdb</code></p></li>
<li><p><code>oracle-se2</code></p></li>
<li><p><code>oracle-se2-cdb</code></p></li>
<li><p><code>postgres</code></p></li>
<li><p><code>sqlserver-ee</code></p></li>
<li><p><code>sqlserver-se</code></p></li>
<li><p><code>sqlserver-ex</code></p></li>
<li><p><code>sqlserver-web</code></p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_orderable_db_instance_options_:_EngineVersion">EngineVersion</code></td>
<td><p>The engine version filter value. Specify this parameter to show
only the available offerings matching the specified engine
version.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_orderable_db_instance_options_:_DBInstanceClass">DBInstanceClass</code></td>
<td><p>The DB instance class filter value. Specify this parameter to
show only the available offerings matching the specified DB instance
class.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_orderable_db_instance_options_:_LicenseModel">LicenseModel</code></td>
<td><p>The license model filter value. Specify this parameter to show
only the available offerings matching the specified license model.</p>
<p>RDS Custom supports only the BYOL licensing model.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_orderable_db_instance_options_:_AvailabilityZoneGroup">AvailabilityZoneGroup</code></td>
<td><p>The Availability Zone group associated with a Local Zone. Specify
this parameter to retrieve available offerings for the Local Zones in
the group.</p>
<p>Omit this parameter to show the available offerings in the specified
Amazon Web Services Region.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_orderable_db_instance_options_:_Vpc">Vpc</code></td>
<td><p>A value that indicates whether to show only VPC or non-VPC
offerings. RDS Custom supports only VPC offerings.</p>
<p>RDS Custom supports only VPC offerings. If you describe non-VPC
offerings for RDS Custom, the output shows VPC offerings.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_orderable_db_instance_options_:_Filters">Filters</code></td>
<td><p>This parameter isn't currently supported.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_orderable_db_instance_options_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token called a marker is included in the response so that you
can retrieve the remaining results.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 10000.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_orderable_db_instance_options_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous
DescribeOrderableDBInstanceOptions request. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by <code>MaxRecords</code>.</p></td>
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
          AvailabilityZoneGroup = "string",
          AvailabilityZones = list(
            list(
              Name = "string"
            )
          ),
          MultiAZCapable = TRUE|FALSE,
          ReadReplicaCapable = TRUE|FALSE,
          Vpc = TRUE|FALSE,
          SupportsStorageEncryption = TRUE|FALSE,
          StorageType = "string",
          SupportsIops = TRUE|FALSE,
          SupportsEnhancedMonitoring = TRUE|FALSE,
          SupportsIAMDatabaseAuthentication = TRUE|FALSE,
          SupportsPerformanceInsights = TRUE|FALSE,
          MinStorageSize = 123,
          MaxStorageSize = 123,
          MinIopsPerDbInstance = 123,
          MaxIopsPerDbInstance = 123,
          MinIopsPerGib = 123.0,
          MaxIopsPerGib = 123.0,
          AvailableProcessorFeatures = list(
            list(
              Name = "string",
              DefaultValue = "string",
              AllowedValues = "string"
            )
          ),
          SupportedEngineModes = list(
            "string"
          ),
          SupportsStorageAutoscaling = TRUE|FALSE,
          SupportsKerberosAuthentication = TRUE|FALSE,
          OutpostCapable = TRUE|FALSE,
          SupportedActivityStreamModes = list(
            "string"
          ),
          SupportsGlobalDatabases = TRUE|FALSE,
          SupportsClusters = TRUE|FALSE,
          SupportedNetworkTypes = list(
            "string"
          ),
          SupportsStorageThroughput = TRUE|FALSE,
          MinStorageThroughputPerDbInstance = 123,
          MaxStorageThroughputPerDbInstance = 123,
          MinStorageThroughputPerIops = 123.0,
          MaxStorageThroughputPerIops = 123.0
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
      AvailabilityZoneGroup = "string",
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
