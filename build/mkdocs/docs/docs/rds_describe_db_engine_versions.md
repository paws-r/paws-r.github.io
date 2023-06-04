<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_describe_db_engine_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the available DB engines

### Description

Returns a list of the available DB engines.

### Usage

    rds_describe_db_engine_versions(Engine, EngineVersion,
      DBParameterGroupFamily, Filters, MaxRecords, Marker, DefaultOnly,
      ListSupportedCharacterSets, ListSupportedTimezones, IncludeAll)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_describe_db_engine_versions_:_Engine">Engine</code></td>
<td><p>The database engine to return.</p>
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
id="rds_describe_db_engine_versions_:_EngineVersion">EngineVersion</code></td>
<td><p>The database engine version to return.</p>
<p>Example: <code style="white-space: pre;">⁠5.1.49⁠</code></p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_db_engine_versions_:_DBParameterGroupFamily">DBParameterGroupFamily</code></td>
<td><p>The name of a specific DB parameter group family to return
details for.</p>
<p>Constraints:</p>
<ul>
<li><p>If supplied, must match an existing
DBParameterGroupFamily.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_db_engine_versions_:_Filters">Filters</code></td>
<td><p>A filter that specifies one or more DB engine versions to
describe.</p>
<p>Supported filters:</p>
<ul>
<li><p><code>db-parameter-group-family</code> - Accepts parameter groups
family names. The results list only includes information about the DB
engine versions for these parameter group families.</p></li>
<li><p><code>engine</code> - Accepts engine names. The results list only
includes information about the DB engine versions for these
engines.</p></li>
<li><p><code>engine-mode</code> - Accepts DB engine modes. The results
list only includes information about the DB engine versions for these
engine modes. Valid DB engine modes are the following:</p>
<ul>
<li><p><code>global</code></p></li>
<li><p><code>multimaster</code></p></li>
<li><p><code>parallelquery</code></p></li>
<li><p><code>provisioned</code></p></li>
<li><p><code>serverless</code></p></li>
</ul></li>
<li><p><code>engine-version</code> - Accepts engine versions. The
results list only includes information about the DB engine versions for
these engine versions.</p></li>
<li><p><code>status</code> - Accepts engine version statuses. The
results list only includes information about the DB engine versions for
these statuses. Valid statuses are the following:</p>
<ul>
<li><p><code>available</code></p></li>
<li><p><code>deprecated</code></p></li>
</ul></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_db_engine_versions_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
than the <code>MaxRecords</code> value is available, a pagination token
called a marker is included in the response so you can retrieve the
remaining results.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_db_engine_versions_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous request. If
this parameter is specified, the response includes only records beyond
the marker, up to the value specified by
<code>MaxRecords</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_db_engine_versions_:_DefaultOnly">DefaultOnly</code></td>
<td><p>A value that indicates whether only the default version of the
specified engine or engine and major version combination is
returned.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_db_engine_versions_:_ListSupportedCharacterSets">ListSupportedCharacterSets</code></td>
<td><p>A value that indicates whether to list the supported character
sets for each engine version.</p>
<p>If this parameter is enabled and the requested engine supports the
<code>CharacterSetName</code> parameter for
<code>create_db_instance</code>, the response includes a list of
supported character sets for each engine version.</p>
<p>For RDS Custom, the default is not to list supported character sets.
If you set <code>ListSupportedCharacterSets</code> to <code>true</code>,
RDS Custom returns no results.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_db_engine_versions_:_ListSupportedTimezones">ListSupportedTimezones</code></td>
<td><p>A value that indicates whether to list the supported time zones
for each engine version.</p>
<p>If this parameter is enabled and the requested engine supports the
<code>TimeZone</code> parameter for <code>create_db_instance</code>, the
response includes a list of supported time zones for each engine
version.</p>
<p>For RDS Custom, the default is not to list supported time zones. If
you set <code>ListSupportedTimezones</code> to <code>true</code>, RDS
Custom returns no results.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_db_engine_versions_:_IncludeAll">IncludeAll</code></td>
<td><p>A value that indicates whether to include engine versions that
aren't available in the list. The default is to list only available
engine versions.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      DBEngineVersions = list(
        list(
          Engine = "string",
          EngineVersion = "string",
          DBParameterGroupFamily = "string",
          DBEngineDescription = "string",
          DBEngineVersionDescription = "string",
          DefaultCharacterSet = list(
            CharacterSetName = "string",
            CharacterSetDescription = "string"
          ),
          Image = list(
            ImageId = "string",
            Status = "string"
          ),
          DBEngineMediaType = "string",
          SupportedCharacterSets = list(
            list(
              CharacterSetName = "string",
              CharacterSetDescription = "string"
            )
          ),
          SupportedNcharCharacterSets = list(
            list(
              CharacterSetName = "string",
              CharacterSetDescription = "string"
            )
          ),
          ValidUpgradeTarget = list(
            list(
              Engine = "string",
              EngineVersion = "string",
              Description = "string",
              AutoUpgrade = TRUE|FALSE,
              IsMajorVersionUpgrade = TRUE|FALSE,
              SupportedEngineModes = list(
                "string"
              ),
              SupportsParallelQuery = TRUE|FALSE,
              SupportsGlobalDatabases = TRUE|FALSE,
              SupportsBabelfish = TRUE|FALSE
            )
          ),
          SupportedTimezones = list(
            list(
              TimezoneName = "string"
            )
          ),
          ExportableLogTypes = list(
            "string"
          ),
          SupportsLogExportsToCloudwatchLogs = TRUE|FALSE,
          SupportsReadReplica = TRUE|FALSE,
          SupportedEngineModes = list(
            "string"
          ),
          SupportedFeatureNames = list(
            "string"
          ),
          Status = "string",
          SupportsParallelQuery = TRUE|FALSE,
          SupportsGlobalDatabases = TRUE|FALSE,
          MajorEngineVersion = "string",
          DatabaseInstallationFilesS3BucketName = "string",
          DatabaseInstallationFilesS3Prefix = "string",
          DBEngineVersionArn = "string",
          KMSKeyId = "string",
          CreateTime = as.POSIXct(
            "2015-01-01"
          ),
          TagList = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          SupportsBabelfish = TRUE|FALSE,
          CustomDBEngineVersionManifest = "string",
          SupportsCertificateRotationWithoutRestart = TRUE|FALSE,
          SupportedCACertificateIdentifiers = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$describe_db_engine_versions(
      Engine = "string",
      EngineVersion = "string",
      DBParameterGroupFamily = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxRecords = 123,
      Marker = "string",
      DefaultOnly = TRUE|FALSE,
      ListSupportedCharacterSets = TRUE|FALSE,
      ListSupportedTimezones = TRUE|FALSE,
      IncludeAll = TRUE|FALSE
    )
