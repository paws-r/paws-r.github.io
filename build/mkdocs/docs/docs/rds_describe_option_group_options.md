<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_describe_option_group_options</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes all available options

### Description

Describes all available options.

### Usage

    rds_describe_option_group_options(EngineName, MajorEngineVersion,
      Filters, MaxRecords, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_describe_option_group_options_:_EngineName">EngineName</code></td>
<td><p>[required] A required parameter. Options available for the given
engine name are described.</p>
<p>Valid Values:</p>
<ul>
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
id="rds_describe_option_group_options_:_MajorEngineVersion">MajorEngineVersion</code></td>
<td><p>If specified, filters the results to include only options for the
specified major engine version.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_option_group_options_:_Filters">Filters</code></td>
<td><p>This parameter isn't currently supported.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_option_group_options_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token called a marker is included in the response so that you
can retrieve the remaining results.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_option_group_options_:_Marker">Marker</code></td>
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
      OptionGroupOptions = list(
        list(
          Name = "string",
          Description = "string",
          EngineName = "string",
          MajorEngineVersion = "string",
          MinimumRequiredMinorEngineVersion = "string",
          PortRequired = TRUE|FALSE,
          DefaultPort = 123,
          OptionsDependedOn = list(
            "string"
          ),
          OptionsConflictsWith = list(
            "string"
          ),
          Persistent = TRUE|FALSE,
          Permanent = TRUE|FALSE,
          RequiresAutoMinorEngineVersionUpgrade = TRUE|FALSE,
          VpcOnly = TRUE|FALSE,
          SupportsOptionVersionDowngrade = TRUE|FALSE,
          OptionGroupOptionSettings = list(
            list(
              SettingName = "string",
              SettingDescription = "string",
              DefaultValue = "string",
              ApplyType = "string",
              AllowedValues = "string",
              IsModifiable = TRUE|FALSE,
              IsRequired = TRUE|FALSE,
              MinimumEngineVersionPerAllowedValue = list(
                list(
                  AllowedValue = "string",
                  MinimumEngineVersion = "string"
                )
              )
            )
          ),
          OptionGroupOptionVersions = list(
            list(
              Version = "string",
              IsDefault = TRUE|FALSE
            )
          ),
          CopyableCrossAccount = TRUE|FALSE
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$describe_option_group_options(
      EngineName = "string",
      MajorEngineVersion = "string",
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
