<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_describe_option_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the available option groups

### Description

Describes the available option groups.

### Usage

    rds_describe_option_groups(OptionGroupName, Filters, Marker, MaxRecords,
      EngineName, MajorEngineVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_describe_option_groups_:_OptionGroupName">OptionGroupName</code></td>
<td><p>The name of the option group to describe. Can't be supplied
together with EngineName or MajorEngineVersion.</p></td>
</tr>
<tr class="even">
<td><code id="rds_describe_option_groups_:_Filters">Filters</code></td>
<td><p>This parameter isn't currently supported.</p></td>
</tr>
<tr class="odd">
<td><code id="rds_describe_option_groups_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous
DescribeOptionGroups request. If this parameter is specified, the
response includes only records beyond the marker, up to the value
specified by <code>MaxRecords</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_option_groups_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token called a marker is included in the response so that you
can retrieve the remaining results.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_option_groups_:_EngineName">EngineName</code></td>
<td><p>Filters the list of option groups to only include groups
associated with a specific database engine.</p>
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
id="rds_describe_option_groups_:_MajorEngineVersion">MajorEngineVersion</code></td>
<td><p>Filters the list of option groups to only include groups
associated with a specific database engine version. If specified, then
EngineName must also be specified.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OptionGroupsList = list(
        list(
          OptionGroupName = "string",
          OptionGroupDescription = "string",
          EngineName = "string",
          MajorEngineVersion = "string",
          Options = list(
            list(
              OptionName = "string",
              OptionDescription = "string",
              Persistent = TRUE|FALSE,
              Permanent = TRUE|FALSE,
              Port = 123,
              OptionVersion = "string",
              OptionSettings = list(
                list(
                  Name = "string",
                  Value = "string",
                  DefaultValue = "string",
                  Description = "string",
                  ApplyType = "string",
                  DataType = "string",
                  AllowedValues = "string",
                  IsModifiable = TRUE|FALSE,
                  IsCollection = TRUE|FALSE
                )
              ),
              DBSecurityGroupMemberships = list(
                list(
                  DBSecurityGroupName = "string",
                  Status = "string"
                )
              ),
              VpcSecurityGroupMemberships = list(
                list(
                  VpcSecurityGroupId = "string",
                  Status = "string"
                )
              )
            )
          ),
          AllowsVpcAndNonVpcInstanceMemberships = TRUE|FALSE,
          VpcId = "string",
          OptionGroupArn = "string",
          SourceOptionGroup = "string",
          SourceAccountId = "string",
          CopyTimestamp = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$describe_option_groups(
      OptionGroupName = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      Marker = "string",
      MaxRecords = 123,
      EngineName = "string",
      MajorEngineVersion = "string"
    )
