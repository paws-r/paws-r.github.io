<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_describe_engine_default_parameters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the default engine and system parameter information for the specified database engine

### Description

Returns the default engine and system parameter information for the
specified database engine.

### Usage

    rds_describe_engine_default_parameters(DBParameterGroupFamily, Filters,
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
id="rds_describe_engine_default_parameters_:_DBParameterGroupFamily">DBParameterGroupFamily</code></td>
<td><p>[required] The name of the DB parameter group family.</p>
<p>Valid Values:</p>
<ul>
<li><p><code>aurora-mysql5.7</code></p></li>
<li><p><code>aurora-mysql8.0</code></p></li>
<li><p><code>aurora-postgresql10</code></p></li>
<li><p><code>aurora-postgresql11</code></p></li>
<li><p><code>aurora-postgresql12</code></p></li>
<li><p><code>aurora-postgresql13</code></p></li>
<li><p><code>aurora-postgresql14</code></p></li>
<li><p><code>custom-oracle-ee-19</code></p></li>
<li><p><code>mariadb10.2</code></p></li>
<li><p><code>mariadb10.3</code></p></li>
<li><p><code>mariadb10.4</code></p></li>
<li><p><code>mariadb10.5</code></p></li>
<li><p><code>mariadb10.6</code></p></li>
<li><p><code>mysql5.7</code></p></li>
<li><p><code>mysql8.0</code></p></li>
<li><p><code>oracle-ee-19</code></p></li>
<li><p><code>oracle-ee-cdb-19</code></p></li>
<li><p><code>oracle-ee-cdb-21</code></p></li>
<li><p><code>oracle-se2-19</code></p></li>
<li><p><code>oracle-se2-cdb-19</code></p></li>
<li><p><code>oracle-se2-cdb-21</code></p></li>
<li><p><code>postgres10</code></p></li>
<li><p><code>postgres11</code></p></li>
<li><p><code>postgres12</code></p></li>
<li><p><code>postgres13</code></p></li>
<li><p><code>postgres14</code></p></li>
<li><p><code>sqlserver-ee-11.0</code></p></li>
<li><p><code>sqlserver-ee-12.0</code></p></li>
<li><p><code>sqlserver-ee-13.0</code></p></li>
<li><p><code>sqlserver-ee-14.0</code></p></li>
<li><p><code>sqlserver-ee-15.0</code></p></li>
<li><p><code>sqlserver-ex-11.0</code></p></li>
<li><p><code>sqlserver-ex-12.0</code></p></li>
<li><p><code>sqlserver-ex-13.0</code></p></li>
<li><p><code>sqlserver-ex-14.0</code></p></li>
<li><p><code>sqlserver-ex-15.0</code></p></li>
<li><p><code>sqlserver-se-11.0</code></p></li>
<li><p><code>sqlserver-se-12.0</code></p></li>
<li><p><code>sqlserver-se-13.0</code></p></li>
<li><p><code>sqlserver-se-14.0</code></p></li>
<li><p><code>sqlserver-se-15.0</code></p></li>
<li><p><code>sqlserver-web-11.0</code></p></li>
<li><p><code>sqlserver-web-12.0</code></p></li>
<li><p><code>sqlserver-web-13.0</code></p></li>
<li><p><code>sqlserver-web-14.0</code></p></li>
<li><p><code>sqlserver-web-15.0</code></p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_engine_default_parameters_:_Filters">Filters</code></td>
<td><p>This parameter isn't currently supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_engine_default_parameters_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token called a marker is included in the response so you can
retrieve the remaining results.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_engine_default_parameters_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous
<code>describe_engine_default_parameters</code> request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by <code>MaxRecords</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EngineDefaults = list(
        DBParameterGroupFamily = "string",
        Marker = "string",
        Parameters = list(
          list(
            ParameterName = "string",
            ParameterValue = "string",
            Description = "string",
            Source = "string",
            ApplyType = "string",
            DataType = "string",
            AllowedValues = "string",
            IsModifiable = TRUE|FALSE,
            MinimumEngineVersion = "string",
            ApplyMethod = "immediate"|"pending-reboot",
            SupportedEngineModes = list(
              "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_engine_default_parameters(
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
      Marker = "string"
    )
