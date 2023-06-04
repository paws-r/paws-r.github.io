<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_get_temporary_glue_partition_credentials</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is identical to GetTemporaryTableCredentials except that this is used when the target Data Catalog resource is of type Partition

### Description

This API is identical to `GetTemporaryTableCredentials` except that this
is used when the target Data Catalog resource is of type Partition. Lake
Formation restricts the permission of the vended credentials with the
same scope down policy which restricts access to a single Amazon S3
prefix.

### Usage

    lakeformation_get_temporary_glue_partition_credentials(TableArn,
      Partition, Permissions, DurationSeconds, AuditContext,
      SupportedPermissionTypes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_get_temporary_glue_partition_credentials_:_TableArn">TableArn</code></td>
<td><p>[required] The ARN of the partitions' table.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_get_temporary_glue_partition_credentials_:_Partition">Partition</code></td>
<td><p>[required] A list of partition values identifying a single
partition.</p></td>
</tr>
<tr class="odd">
<td><code
id="lakeformation_get_temporary_glue_partition_credentials_:_Permissions">Permissions</code></td>
<td><p>Filters the request based on the user having been granted a list
of specified permissions on the requested resource(s).</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_get_temporary_glue_partition_credentials_:_DurationSeconds">DurationSeconds</code></td>
<td><p>The time period, between 900 and 21,600 seconds, for the timeout
of the temporary credentials.</p></td>
</tr>
<tr class="odd">
<td><code
id="lakeformation_get_temporary_glue_partition_credentials_:_AuditContext">AuditContext</code></td>
<td><p>A structure representing context to access a resource (column
names, query ID, etc).</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_get_temporary_glue_partition_credentials_:_SupportedPermissionTypes">SupportedPermissionTypes</code></td>
<td><p>[required] A list of supported permission types for the
partition. Valid values are <code>COLUMN_PERMISSION</code> and
<code>CELL_FILTER_PERMISSION</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AccessKeyId = "string",
      SecretAccessKey = "string",
      SessionToken = "string",
      Expiration = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_temporary_glue_partition_credentials(
      TableArn = "string",
      Partition = list(
        Values = list(
          "string"
        )
      ),
      Permissions = list(
        "ALL"|"SELECT"|"ALTER"|"DROP"|"DELETE"|"INSERT"|"DESCRIBE"|"CREATE_DATABASE"|"CREATE_TABLE"|"DATA_LOCATION_ACCESS"|"CREATE_TAG"|"ASSOCIATE"
      ),
      DurationSeconds = 123,
      AuditContext = list(
        AdditionalAuditContext = "string"
      ),
      SupportedPermissionTypes = list(
        "COLUMN_PERMISSION"|"CELL_FILTER_PERMISSION"
      )
    )
