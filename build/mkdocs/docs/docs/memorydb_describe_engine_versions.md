<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_describe_engine_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the available Redis engine versions

### Description

Returns a list of the available Redis engine versions.

### Usage

    memorydb_describe_engine_versions(EngineVersion, ParameterGroupFamily,
      MaxResults, NextToken, DefaultOnly)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="memorydb_describe_engine_versions_:_EngineVersion">EngineVersion</code></td>
<td><p>The Redis engine version</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_describe_engine_versions_:_ParameterGroupFamily">ParameterGroupFamily</code></td>
<td><p>The name of a specific parameter group family to return details
for.</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_describe_engine_versions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified MaxResults value, a token is included
in the response so that the remaining results can be retrieved.</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_describe_engine_versions_:_NextToken">NextToken</code></td>
<td><p>An optional argument to pass in case the total number of records
exceeds the value of MaxResults. If nextToken is returned, there are
more results available. The value of nextToken is a unique pagination
token for each page. Make the call again using the returned token to
retrieve the next page. Keep all other arguments unchanged.</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_describe_engine_versions_:_DefaultOnly">DefaultOnly</code></td>
<td><p>If true, specifies that only the default version of the specified
engine or engine and major version combination is to be
returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      EngineVersions = list(
        list(
          EngineVersion = "string",
          EnginePatchVersion = "string",
          ParameterGroupFamily = "string"
        )
      )
    )

### Request syntax

    svc$describe_engine_versions(
      EngineVersion = "string",
      ParameterGroupFamily = "string",
      MaxResults = 123,
      NextToken = "string",
      DefaultOnly = TRUE|FALSE
    )
