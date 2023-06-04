<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_describe_db_engine_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the available engines

### Description

Returns a list of the available engines.

### Usage

    docdb_describe_db_engine_versions(Engine, EngineVersion,
      DBParameterGroupFamily, Filters, MaxRecords, Marker, DefaultOnly,
      ListSupportedCharacterSets, ListSupportedTimezones)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="docdb_describe_db_engine_versions_:_Engine">Engine</code></td>
<td><p>The database engine to return.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_describe_db_engine_versions_:_EngineVersion">EngineVersion</code></td>
<td><p>The database engine version to return.</p>
<p>Example: <code style="white-space: pre;">⁠3.6.0⁠</code></p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_describe_db_engine_versions_:_DBParameterGroupFamily">DBParameterGroupFamily</code></td>
<td><p>The name of a specific parameter group family to return details
for.</p>
<p>Constraints:</p>
<ul>
<li><p>If provided, must match an existing
<code>DBParameterGroupFamily</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="docdb_describe_db_engine_versions_:_Filters">Filters</code></td>
<td><p>This parameter is not currently supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_describe_db_engine_versions_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token (marker) is included in the response so that the
remaining results can be retrieved.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_describe_db_engine_versions_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous request. If
this parameter is specified, the response includes only records beyond
the marker, up to the value specified by
<code>MaxRecords</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_describe_db_engine_versions_:_DefaultOnly">DefaultOnly</code></td>
<td><p>Indicates that only the default version of the specified engine
or engine and major version combination is returned.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_describe_db_engine_versions_:_ListSupportedCharacterSets">ListSupportedCharacterSets</code></td>
<td><p>If this parameter is specified and the requested engine supports
the <code>CharacterSetName</code> parameter for
<code>create_db_instance</code>, the response includes a list of
supported character sets for each engine version.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_describe_db_engine_versions_:_ListSupportedTimezones">ListSupportedTimezones</code></td>
<td><p>If this parameter is specified and the requested engine supports
the <code>TimeZone</code> parameter for <code>create_db_instance</code>,
the response includes a list of supported time zones for each engine
version.</p></td>
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
          ValidUpgradeTarget = list(
            list(
              Engine = "string",
              EngineVersion = "string",
              Description = "string",
              AutoUpgrade = TRUE|FALSE,
              IsMajorVersionUpgrade = TRUE|FALSE
            )
          ),
          ExportableLogTypes = list(
            "string"
          ),
          SupportsLogExportsToCloudwatchLogs = TRUE|FALSE
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
      ListSupportedTimezones = TRUE|FALSE
    )
