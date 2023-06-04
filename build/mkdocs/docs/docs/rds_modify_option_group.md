<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_modify_option_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies an existing option group

### Description

Modifies an existing option group.

### Usage

    rds_modify_option_group(OptionGroupName, OptionsToInclude,
      OptionsToRemove, ApplyImmediately)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_modify_option_group_:_OptionGroupName">OptionGroupName</code></td>
<td><p>[required] The name of the option group to be modified.</p>
<p>Permanent options, such as the TDE option for Oracle Advanced
Security TDE, can't be removed from an option group, and that option
group can't be removed from a DB instance once it is associated with a
DB instance</p></td>
</tr>
<tr class="even">
<td><code
id="rds_modify_option_group_:_OptionsToInclude">OptionsToInclude</code></td>
<td><p>Options in this list are added to the option group or, if already
present, the specified configuration is used to update the existing
configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_modify_option_group_:_OptionsToRemove">OptionsToRemove</code></td>
<td><p>Options in this list are removed from the option group.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_modify_option_group_:_ApplyImmediately">ApplyImmediately</code></td>
<td><p>A value that indicates whether to apply the change immediately or
during the next maintenance window for each instance associated with the
option group.</p></td>
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

    svc$modify_option_group(
      OptionGroupName = "string",
      OptionsToInclude = list(
        list(
          OptionName = "string",
          Port = 123,
          OptionVersion = "string",
          DBSecurityGroupMemberships = list(
            "string"
          ),
          VpcSecurityGroupMemberships = list(
            "string"
          ),
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
          )
        )
      ),
      OptionsToRemove = list(
        "string"
      ),
      ApplyImmediately = TRUE|FALSE
    )
