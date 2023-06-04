<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_create_option_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new option group

### Description

Creates a new option group. You can create up to 20 option groups.

This command doesn't apply to RDS Custom.

### Usage

    rds_create_option_group(OptionGroupName, EngineName, MajorEngineVersion,
      OptionGroupDescription, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_create_option_group_:_OptionGroupName">OptionGroupName</code></td>
<td><p>[required] Specifies the name of the option group to be
created.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be 1 to 255 letters, numbers, or hyphens</p></li>
<li><p>First character must be a letter</p></li>
<li><p>Can't end with a hyphen or contain two consecutive
hyphens</p></li>
</ul>
<p>Example: <code>myoptiongroup</code></p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_option_group_:_EngineName">EngineName</code></td>
<td><p>[required] Specifies the name of the engine that this option
group should be associated with.</p>
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
<tr class="odd">
<td><code
id="rds_create_option_group_:_MajorEngineVersion">MajorEngineVersion</code></td>
<td><p>[required] Specifies the major version of the engine that this
option group should be associated with.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_option_group_:_OptionGroupDescription">OptionGroupDescription</code></td>
<td><p>[required] The description of the option group.</p></td>
</tr>
<tr class="odd">
<td><code id="rds_create_option_group_:_Tags">Tags</code></td>
<td><p>Tags to assign to the option group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OptionGroup = list(
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
    )

### Request syntax

    svc$create_option_group(
      OptionGroupName = "string",
      EngineName = "string",
      MajorEngineVersion = "string",
      OptionGroupDescription = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
